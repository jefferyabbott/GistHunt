import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:highlight/highlight.dart';
import 'package:highlight/languages/all.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:provider/provider.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gisthunt/l10n/app_localizations.dart';
import '../themes/font_size_provider.dart';
import '../themes/tab_size_provider.dart';
import '../utils/language_utils.dart';
import '../data/gist_cache_service.dart';
import '../data/sync_queue_service.dart';
import '../data/sync_models.dart';
import '../data/connectivity_service.dart';
import '../utils/network_utils.dart';
import '../components/delete_confirmation_dialog.dart';

// Intent for inserting tab spaces
class InsertTabIntent extends Intent {
  const InsertTabIntent();
}

// Custom TextEditingController that applies syntax highlighting
class SyntaxHighlightingController extends TextEditingController {
  String? language;
  final Map<String, TextStyle> theme;

  SyntaxHighlightingController({
    super.text,
    this.language,
    Map<String, TextStyle>? theme,
  }) : theme = theme ?? githubTheme;

  void updateLanguage(String? newLanguage) {
    if (language != newLanguage) {
      language = newLanguage;
      notifyListeners(); // Trigger rebuild with new syntax highlighting
    }
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    if (language == null || language!.isEmpty || text.isEmpty) {
      return TextSpan(text: text, style: style);
    }

    try {
      final mode = allLanguages[language!];
      if (mode == null) {
        return TextSpan(text: text, style: style);
      }

      final highlighter = Highlight();
      highlighter.registerLanguage(language!, mode);
      final result = highlighter.parse(text, language: language);

      if (result.nodes == null || result.nodes!.isEmpty) {
        return TextSpan(text: text, style: style);
      }

      final children = _convertNodes(result.nodes, theme, style);
      return TextSpan(
        style: style,
        children: children.isEmpty ? [TextSpan(text: text, style: style)] : children,
      );
    } catch (e) {
      // Fall back to plain text if highlighting fails
      return TextSpan(text: text, style: style);
    }
  }

  List<TextSpan> _convertNodes(
    List<Node>? nodes,
    Map<String, TextStyle> theme,
    TextStyle? defaultStyle,
  ) {
    if (nodes == null || nodes.isEmpty) return [];

    final spans = <TextSpan>[];
    for (final node in nodes) {
      TextStyle? nodeStyle = defaultStyle;
      if (node.className != null) {
        final themeStyle = theme[node.className!];
        if (themeStyle != null) {
          nodeStyle = defaultStyle != null
            ? defaultStyle.merge(themeStyle)
            : themeStyle;
        }
      }

      if (node.value != null && node.value!.isNotEmpty) {
        spans.add(TextSpan(
          text: node.value,
          style: nodeStyle,
        ));
      }

      // Children inherit this node's style as their default
      if (node.children != null && node.children!.isNotEmpty) {
        spans.addAll(_convertNodes(node.children, theme, nodeStyle));
      }
    }
    return spans;
  }
}

class GistFile {
  String filename;
  String content;

  /// The file's name on GitHub when the editor opened, or empty for a file
  /// added in this session. Used to send renames as renames.
  final String originalFilename;
  TextEditingController filenameController;
  SyntaxHighlightingController contentController;
  FocusNode focusNode;

  GistFile({
    required this.filename,
    required this.content,
    required Map<String, TextStyle> theme,
    String? language,
  })  : originalFilename = filename,
        filenameController = TextEditingController(text: filename),
        contentController = SyntaxHighlightingController(
          text: content,
          language: language ?? LanguageUtils.getLanguageFromFilename(filename),
          theme: theme,
        ),
        focusNode = FocusNode() {
    // Update syntax highlighting when filename changes
    filenameController.addListener(() {
      final newLanguage = LanguageUtils.getLanguageFromFilename(filenameController.text);
      contentController.updateLanguage(newLanguage);
    });
  }

  void dispose() {
    filenameController.dispose();
    contentController.dispose();
    focusNode.dispose();
  }
}

class GistEditScreen extends StatefulWidget {
  final dynamic gist;
  final String? content;
  final String? filename;
  final String? language;
  final VoidCallback onGistUpdated;
  final Function(dynamic)? onGistCreated;
  final bool isNew;
  final GistCacheService? cacheService;
  final SyncQueueService? syncQueueService;

  const GistEditScreen({
    super.key,
    this.gist,
    this.content,
    this.filename,
    this.language,
    required this.onGistUpdated,
    this.onGistCreated,
    this.isNew = false,
    this.cacheService,
    this.syncQueueService,
  });

  @override
  State<GistEditScreen> createState() => _GistEditScreenState();
}

class _GistEditScreenState extends State<GistEditScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  final List<GistFile> _files = [];
  int _selectedFileIndex = 0;
  bool _isSaving = false;
  bool _isDeleting = false;
  final storage = const FlutterSecureStorage();
  final ScrollController _scrollController = ScrollController();
  bool _isPublic = false;
  final ConnectivityService _connectivityService = ConnectivityService();
  bool _showMarkdownPreview = false; // Start in raw (edit) mode

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_files.isEmpty) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;
      final theme = isDarkMode ? monokaiSublimeTheme : githubTheme;

      if (widget.isNew) {
        _files.add(GistFile(filename: '', content: '', theme: theme, language: null));
      } else {
        // Normalize CRLF/CR line endings to LF for the editor
        final normalizedContent = (widget.content ?? '').replaceAll('\r\n', '\n').replaceAll('\r', '\n');
        _files.add(GistFile(
          filename: widget.filename ?? '',
          content: normalizedContent,
          theme: theme,
          language: widget.language,
        ));
        if (widget.gist != null) {
          _descriptionController.text = widget.gist['description'] ?? '';
        }
      }
    }
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _scrollController.dispose();
    for (var file in _files) {
      file.dispose();
    }
    super.dispose();
  }

  void _addFile() {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final theme = isDarkMode ? monokaiSublimeTheme : githubTheme;
    setState(() {
      _files.add(GistFile(filename: '', content: '', theme: theme, language: null));
      _selectedFileIndex = _files.length - 1;
    });
  }

  /// Original names of existing files removed in this editing session.
  final List<String> _removedFilenames = [];

  void _removeFile(int index) {
    if (_files.length <= 1) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.gistMustHaveOneFile)),
      );
      return;
    }
    setState(() {
      final originalFilename = _files[index].originalFilename;
      if (originalFilename.isNotEmpty) {
        _removedFilenames.add(originalFilename);
      }
      _files[index].dispose();
      _files.removeAt(index);
      if (_selectedFileIndex >= _files.length) {
        _selectedFileIndex = _files.length - 1;
      }
    });
  }

  Map<String, dynamic> _buildCreatePayload() {
    final filesMap = <String, dynamic>{};
    for (var file in _files) {
      filesMap[file.filenameController.text] = {
        'content': file.contentController.text,
      };
    }

    return {
      'description': _descriptionController.text,
      'public': _isPublic,
      'files': filesMap,
    };
  }

  /// Builds the PATCH payload for an existing gist.
  ///
  /// GitHub keys each entry by the file's current name on the server, so a
  /// renamed file is sent under its original name with a new `filename`, and
  /// a removed file is sent as null, which deletes it.
  Map<String, dynamic> _buildUpdatePayload() {
    final filesMap = <String, dynamic>{};
    for (final filename in _removedFilenames) {
      filesMap[filename] = null;
    }
    for (var file in _files) {
      final filename = file.filenameController.text;
      if (filename.isEmpty) continue;

      final original = file.originalFilename;
      if (original.isEmpty || original == filename) {
        filesMap[filename] = {'content': file.contentController.text};
      } else {
        filesMap[original] = {
          'filename': filename,
          'content': file.contentController.text,
        };
      }
    }
    return {'files': filesMap};
  }

  /// Caches the editor's file contents under [gistId], and drops cache
  /// entries for files that were renamed or removed.
  Future<void> _updateContentCache(String gistId) async {
    final cacheService = widget.cacheService;
    if (cacheService == null) return;

    for (final filename in _removedFilenames) {
      await cacheService.clearContent('${gistId}_$filename');
    }
    for (var file in _files) {
      final filename = file.filenameController.text;
      if (filename.isEmpty) continue;

      final original = file.originalFilename;
      if (original.isNotEmpty && original != filename) {
        await cacheService.clearContent('${gistId}_$original');
      }
      await cacheService.setContent(
          '${gistId}_$filename', file.contentController.text);
    }
  }

  Future<void> _createGist() async {
    if (_isSaving) return;

    setState(() {
      _isSaving = true;
    });

    try {
      final token = await storage.read(key: 'github_token');
      if (token == null) {
        throw Exception('No token found');
      }

      if (!_connectivityService.isConnected &&
          widget.syncQueueService != null) {
        await _createGistOffline();
        return;
      }

      final response = await http.post(
        Uri.parse('https://api.github.com/gists'),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/vnd.github.v3+json',
          'Content-Type': 'application/json',
        },
        body: json.encode(_buildCreatePayload()),
      );

      if (response.statusCode == 201) {
        final createdGist = json.decode(response.body);
        await _updateContentCache(createdGist['id'] as String);

        if (mounted) {
          widget.onGistCreated?.call(createdGist);
          Navigator.pop(context);
        }
      } else {
        throw Exception('Failed to create gist: ${response.statusCode}');
      }
    } catch (e) {
      // Connectivity check can be stale; on a network error, queue for offline sync
      if (isNetworkError(e) && widget.syncQueueService != null) {
        await _createGistOffline();
        return;
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorCreatingGist('$e'))),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  Future<void> _createGistOffline() async {
    if (widget.syncQueueService == null) return;

    final payload = _buildCreatePayload();
    final tempId = widget.syncQueueService!.generateTempId();
    final operation = SyncOperation(
      id: tempId,
      type: SyncOperationType.create,
      gistId: tempId,
      data: payload,
      createdAt: DateTime.now(),
    );

    await widget.syncQueueService!.addOperation(operation);

    // Show a placeholder gist locally until the queued create is synced
    final tempGist = _createTempGistObject(tempId, payload);
    await _updateContentCache(tempId);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.gistSavedOffline),
          backgroundColor: Colors.orange,
        ),
      );
      widget.onGistCreated?.call(tempGist);
      Navigator.pop(context);
    }
  }

  Map<String, dynamic> _createTempGistObject(
      String tempId, Map<String, dynamic> payload) {
    final files = payload['files'] as Map<String, dynamic>;
    final filesWithMetadata = <String, dynamic>{};

    for (var entry in files.entries) {
      filesWithMetadata[entry.key] = {
        'filename': entry.key,
        'content': entry.value['content'],
        'language': LanguageUtils.getLanguageFromFilename(entry.key),
        'raw_url': '', // No URL for offline gists
        'size': (entry.value['content'] as String).length,
        'type': 'text/plain',
      };
    }

    return {
      'id': tempId,
      'description': payload['description'],
      'public': payload['public'],
      'files': filesWithMetadata,
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
      'html_url': '',
      'git_pull_url': '',
      'git_push_url': '',
      'comments': 0,
      'owner': {}, // Offline gist has no owner info
      '_offline_pending': true, // Mark as pending sync
    };
  }

  Future<void> _updateGist() async {
    if (_isSaving) return;

    setState(() {
      _isSaving = true;
    });

    try {
      final token = await storage.read(key: 'github_token');
      if (token == null) {
        throw Exception('No token found');
      }

      if (!_connectivityService.isConnected &&
          widget.syncQueueService != null) {
        await _updateGistOffline();
        return;
      }

      final gistId = widget.gist['id'] as String;
      final response = await http.patch(
        Uri.parse('https://api.github.com/gists/$gistId'),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/vnd.github.v3+json',
          'Content-Type': 'application/json',
        },
        body: json.encode(_buildUpdatePayload()),
      );

      if (response.statusCode == 200) {
        await _updateContentCache(gistId);
        if (mounted) {
          widget.onGistUpdated();
        }
      } else {
        throw Exception('Failed to update gist: ${response.statusCode}');
      }
    } catch (e) {
      // Connectivity check can be stale; on a network error, queue for offline sync
      if (isNetworkError(e) && widget.syncQueueService != null) {
        await _updateGistOffline();
        return;
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorSavingGist('$e'))),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  Future<void> _updateGistOffline() async {
    if (widget.syncQueueService == null) return;

    final gistId = widget.gist['id'] as String;
    final operation = SyncOperation(
      id: widget.syncQueueService!.generateTempId(),
      type: SyncOperationType.update,
      gistId: gistId,
      data: _buildUpdatePayload(),
      createdAt: DateTime.now(),
    );

    await widget.syncQueueService!.addOperation(operation);
    await _updateContentCache(gistId);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.changesSavedOffline),
          backgroundColor: Colors.orange,
        ),
      );
      widget.onGistUpdated();
    }
  }

  Future<void> _deleteGist() async {
    final gistFiles = widget.gist?['files'] as Map<String, dynamic>?;
    final isMultiFile = gistFiles != null && gistFiles.length > 1;
    // Use the name GitHub knows, in case the file was renamed but not saved.
    final currentFile = _files.isNotEmpty ? _files[_selectedFileIndex] : null;
    final currentFileName = currentFile == null
        ? widget.filename
        : (currentFile.originalFilename.isNotEmpty
            ? currentFile.originalFilename
            : currentFile.filenameController.text);

    String? deleteChoice;

    if (isMultiFile && currentFileName != null && currentFileName.isNotEmpty) {
      // Multi-file gist: ask whether to delete just this file or the whole gist
      deleteChoice = await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(AppLocalizations.of(context)!.delete),
            content: Text(AppLocalizations.of(context)!.deleteFileOrGistPrompt(currentFileName)),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, null),
                child: Text(AppLocalizations.of(context)!.cancel),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'file'),
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                ),
                child: Text(AppLocalizations.of(context)!.deleteFile),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'gist'),
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                ),
                child: Text(AppLocalizations.of(context)!.deleteAllFiles),
              ),
            ],
          );
        },
      );

      // Require typed DELETE confirmation for either choice
      if (deleteChoice != null && mounted) {
        final confirmed = await DeleteConfirmationDialog.show(
          context: context,
          title: deleteChoice == 'file'
              ? AppLocalizations.of(context)!.deleteFile
              : AppLocalizations.of(context)!.deleteGist,
          message: deleteChoice == 'file'
              ? AppLocalizations.of(context)!.deleteFileMessage(currentFileName)
              : AppLocalizations.of(context)!.deleteEntireGistMessage,
        );
        if (!confirmed) {
          deleteChoice = null;
        }
      }
    } else {
      // Single-file gist: deleting the file means deleting the whole gist
      final confirmed = await DeleteConfirmationDialog.show(
        context: context,
        title: AppLocalizations.of(context)!.deleteGist,
        message: AppLocalizations.of(context)!.deleteGistMessage,
      );
      if (confirmed) {
        deleteChoice = 'gist';
      }
    }

    if (deleteChoice == null || !mounted) return;

    setState(() {
      _isDeleting = true;
    });

    try {
      final token = await storage.read(key: 'github_token');
      if (token == null) {
        throw Exception('No token found');
      }

      final gistId = widget.gist['id'];

      if (deleteChoice == 'file') {
        // GitHub API: setting a file's value to null in a PATCH deletes that file
        final payload = {
          'files': {
            currentFileName: null,
          }
        };

        final response = await http.patch(
          Uri.parse('https://api.github.com/gists/$gistId'),
          headers: {
            'Authorization': 'Bearer $token',
            'Accept': 'application/vnd.github.v3+json',
            'Content-Type': 'application/json',
          },
          body: json.encode(payload),
        );

        if (response.statusCode == 200) {
          if (widget.cacheService != null && currentFileName != null) {
            final cacheKey = '${gistId}_$currentFileName';
            await widget.cacheService!.clearContent(cacheKey);
          }
          if (mounted) {
            widget.onGistUpdated();
          }
        } else {
          throw Exception('Failed to delete file: ${response.statusCode}');
        }
      } else {
        final response = await http.delete(
          Uri.parse('https://api.github.com/gists/$gistId'),
          headers: {
            'Authorization': 'Bearer $token',
            'Accept': 'application/vnd.github.v3+json',
          },
        );

        if (response.statusCode == 204) {
          if (mounted) {
            widget.onGistUpdated();
          }
        } else {
          throw Exception('Failed to delete gist: ${response.statusCode}');
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorDeleting('$e'))),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isDeleting = false;
        });
      }
    }
  }

  Widget _buildFileSelector() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.folder_outlined,
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.add, size: 20),
                  onPressed: _addFile,
                  tooltip: AppLocalizations.of(context)!.addFile,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          ...List.generate(_files.length, (index) {
            final file = _files[index];
            final isSelected = index == _selectedFileIndex;
            return InkWell(
              onTap: () => setState(() => _selectedFileIndex = index),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withValues(alpha: 0.5)
                      : null,
                  border: Border(
                    left: BorderSide(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.transparent,
                      width: 3,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.description_outlined,
                      size: 14,
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withValues(alpha: 0.7),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        file.filenameController.text.isEmpty
                            ? AppLocalizations.of(context)!.newFileNumbered(index + 1)
                            : file.filenameController.text,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                              fontStyle: file.filenameController.text.isEmpty
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (_files.length > 1)
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          size: 16,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        onPressed: () => _removeFile(index),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: AppLocalizations.of(context)!.removeFile,
                      ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  bool _isMarkdownFile(String filename) {
    final lowerName = filename.toLowerCase();
    return lowerName.endsWith('.md') || lowerName.endsWith('.markdown');
  }

  Widget _buildActionButtons({bool isEditMode = false}) {
    if (isEditMode) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (!widget.isNew)
            Expanded(
              child: IconButton.filled(
                onPressed: _isDeleting ? null : _deleteGist,
                icon: _isDeleting
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.delete),
                style: IconButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          if (!widget.isNew) const SizedBox(width: 8),
          Expanded(
            child: IconButton.outlined(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close),
              style: IconButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: IconButton.filled(
              onPressed:
                  _isSaving ? null : (widget.isNew ? _createGist : _updateGist),
              icon: _isSaving
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.save),
              style: IconButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton.outlined(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
            style: IconButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.onSurface,
              backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
          ),
          const SizedBox(width: 8),
          IconButton.filled(
            onPressed: _isSaving ? null : _createGist,
            icon: _isSaving
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.save),
            style: IconButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentFile =
        _files.isNotEmpty ? _files[_selectedFileIndex] : null;
    final fontSize = context.watch<FontSizeProvider>().fontSize;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isNew
            ? AppLocalizations.of(context)!.newGist
            : (currentFile?.filenameController.text ?? widget.filename!)),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (widget.isNew) ...[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: _descriptionController,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          decoration: InputDecoration(
                            labelText:
                                AppLocalizations.of(context)!.description,
                            labelStyle: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                            ),
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.5),
                              ),
                            ),
                          ),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Row(
                              children: [
                                Switch(
                                  value: _isPublic,
                                  onChanged: (value) {
                                    setState(() {
                                      _isPublic = value;
                                    });
                                  },
                                  activeThumbColor: Colors.white,
                                  activeTrackColor: Colors.green,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.public,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            _buildActionButtons(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ] else ...[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _buildActionButtons(isEditMode: true),
                  ),
                ],
                // File selector
                _buildFileSelector(),
                if (currentFile != null) ...[
                  // Filename input for current file
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      controller: currentFile.filenameController,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.filename,
                        labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                        hintText: AppLocalizations.of(context)!.filenameHint,
                        hintStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
                        ),
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.5),
                          ),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Raw/preview toggle (Markdown files only)
                  if (_isMarkdownFile(currentFile.filenameController.text))
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SegmentedButton<bool>(
                        segments: [
                          ButtonSegment<bool>(
                            value: false,
                            label: Text(AppLocalizations.of(context)!.raw),
                            icon: const Icon(Icons.edit, size: 16),
                          ),
                          ButtonSegment<bool>(
                            value: true,
                            label: Text(AppLocalizations.of(context)!.preview),
                            icon: const Icon(Icons.preview, size: 16),
                          ),
                        ],
                        selected: {_showMarkdownPreview},
                        onSelectionChanged: (Set<bool> newSelection) {
                          setState(() {
                            _showMarkdownPreview = newSelection.first;
                          });
                        },
                      ),
                    ),
                  if (_isMarkdownFile(currentFile.filenameController.text))
                    const SizedBox(height: 8),
                  // Code editor or preview for current file
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    margin: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: isDarkMode ? const Color(0xFF1E1E1E) : const Color(0xFFF8F8F8),
                      border: Border.all(color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: _isMarkdownFile(currentFile.filenameController.text) && _showMarkdownPreview
                        ? // Markdown preview
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(12),
                            child: MarkdownBody(
                              data: currentFile.contentController.text,
                              selectable: true,
                              onTapLink: (text, href, title) {
                                if (href != null) {
                                  launchUrl(Uri.parse(href));
                                }
                              },
                              styleSheet: MarkdownStyleSheet(
                                p: TextStyle(fontSize: fontSize, color: Theme.of(context).colorScheme.onSurface),
                                h1: TextStyle(fontSize: fontSize * 2, color: Theme.of(context).colorScheme.onSurface),
                                h2: TextStyle(fontSize: fontSize * 1.5, color: Theme.of(context).colorScheme.onSurface),
                                h3: TextStyle(fontSize: fontSize * 1.25, color: Theme.of(context).colorScheme.onSurface),
                                code: TextStyle(
                                  fontFamily: 'JetBrainsMono',
                                  fontSize: fontSize * 0.9,
                                  color: Theme.of(context).colorScheme.onSurface,
                                  backgroundColor: Theme.of(context).colorScheme.surface,
                                ),
                                codeblockDecoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          )
                        : // Code editor with live syntax highlighting
                          Consumer<TabSizeProvider>(
                            builder: (context, tabSizeProvider, _) {
                              return Shortcuts(
                                shortcuts: {
                                  const SingleActivator(LogicalKeyboardKey.tab): const InsertTabIntent(),
                                },
                                child: Actions(
                                  actions: {
                                    InsertTabIntent: CallbackAction<InsertTabIntent>(
                                      onInvoke: (intent) {
                                        final controller = currentFile.contentController;
                                        final selection = controller.selection;
                                        final spaces = ' ' * tabSizeProvider.tabSize;

                                        if (selection.isValid) {
                                          final newText = controller.text.replaceRange(
                                            selection.start,
                                            selection.end,
                                            spaces,
                                          );
                                          controller.value = TextEditingValue(
                                            text: newText,
                                            selection: TextSelection.collapsed(
                                              offset: selection.start + spaces.length,
                                            ),
                                          );
                                        }
                                        return null;
                                      },
                                    ),
                                  },
                                  child: TextField(
                                    controller: currentFile.contentController,
                                    focusNode: currentFile.focusNode,
                                    maxLines: null,
                                    style: TextStyle(
                                      fontFamily: 'JetBrainsMono',
                                      fontSize: fontSize,
                                      height: 1.5,
                                      color: isDarkMode ? Colors.white : Colors.black,
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(12),
                                    ),
                                    keyboardType: TextInputType.multiline,
                                    autocorrect: false,
                                    enableSuggestions: false,
                                    cursorColor: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
