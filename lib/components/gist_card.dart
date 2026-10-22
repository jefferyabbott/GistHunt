import 'dart:convert';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:time_since/time_since.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/gist_cache_service.dart';
import '../data/sync_queue_service.dart';
import '../data/gist_social_service.dart';
import '../data/gist_share_service.dart';
import '../data/gist_organization_service.dart';
import '../data/export_settings_service.dart';
import '../themes/font_size_provider.dart';
import '../screens/gist_edit_screen.dart';
import '../screens/gists_screen.dart';
import 'package:gisthunt/l10n/app_localizations.dart';
import 'delete_confirmation_dialog.dart';
import 'syntax_highlighted_code.dart';
import '../utils/language_utils.dart';
import '../utils/network_utils.dart';

class GistCard extends StatefulWidget {
  final dynamic gist;
  final GistCacheService cacheService;
  final String? searchTerm;
  final SyncQueueService? syncQueueService;
  final GistOrganizationService? organizationService;
  final VoidCallback? onGistDeleted;

  const GistCard({
    super.key,
    required this.gist,
    required this.cacheService,
    this.searchTerm,
    this.syncQueueService,
    this.organizationService,
    this.onGistDeleted,
  });

  @override
  State<GistCard> createState() => _GistCardState();
}

class _GistCardState extends State<GistCard> with AutomaticKeepAliveClientMixin {
  String? _content;
  bool _showCopyFeedback = false;
  String? _selectedFileName;
  final Map<String, String> _fileContents = {};
  String? _lastSearchTerm;
  Set<String> _filesWithSearchMatch = {};
  final storage = const FlutterSecureStorage();
  final GistSocialService _socialService = GistSocialService();
  bool? _isStarred;
  bool _isStarring = false;
  bool _isForking = false;
  bool _showMarkdownPreview = true; // Default to preview for markdown files

  @override
  bool get wantKeepAlive => true; // Keep cards alive to prevent scroll issues from rebuilds

  @override
  void initState() {
    super.initState();
    _initializeSelectedFile();
    _loadContentFromCache();
    _checkStarredStatus();
  }

  @override
  void didUpdateWidget(GistCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    final files = widget.gist['files'] as Map<String, dynamic>?;
    if (files != null &&
        files.isNotEmpty &&
        !files.containsKey(_selectedFileName)) {
      // The selected file was deleted or renamed; show the first remaining one.
      _initializeSelectedFile();
      _content = null;
      _loadContentFromCache();
    }
    if (widget.searchTerm != _lastSearchTerm) {
      _lastSearchTerm = widget.searchTerm;
      if (widget.searchTerm != null && widget.searchTerm!.isNotEmpty) {
        _autoSelectFileWithSearchTerm();
      } else {
        if (_filesWithSearchMatch.isNotEmpty) {
          setState(() {
            _filesWithSearchMatch = {};
          });
        }
      }
    }
  }

  Future<void> _autoSelectFileWithSearchTerm() async {
    if (widget.searchTerm == null || widget.searchTerm!.isEmpty) {
      setState(() {
        _filesWithSearchMatch = {};
      });
      return;
    }

    final searchTerm = widget.searchTerm!.toLowerCase();
    final files = widget.gist['files'] as Map<String, dynamic>?;
    final gistId = widget.gist['id'] as String?;

    if (files == null || gistId == null) return;

    final Set<String> matchingFiles = {};
    String? firstMatchingFile;

    // Sorted to match the file tree, so the first match is the one shown first.
    for (var fileName in files.keys.toList()..sort()) {
      String? content;

      // Only already-cached content is searched; uncached files are not fetched.
      if (_fileContents.containsKey(fileName)) {
        content = _fileContents[fileName];
      } else {
        final cacheKey = '${gistId}_$fileName';
        final cachedContent = await widget.cacheService.getContent(cacheKey);
        if (cachedContent != null) {
          _fileContents[fileName] = cachedContent;
          content = cachedContent;
        }
      }

      if (content != null && content.toLowerCase().contains(searchTerm)) {
        matchingFiles.add(fileName);
        firstMatchingFile ??= fileName;
      }
    }

    if (!mounted) return;
    setState(() {
      _filesWithSearchMatch = matchingFiles;
    });

    // Auto-select the first matching file if current file doesn't have a match
    if (firstMatchingFile != null && !matchingFiles.contains(_selectedFileName)) {
      await _selectFile(firstMatchingFile);
    }
  }

  void _initializeSelectedFile() {
    final files = widget.gist['files'] as Map<String, dynamic>?;
    if (files != null && files.isNotEmpty) {
      // Use sorted order to match UI display
      final sortedKeys = files.keys.toList()..sort();
      _selectedFileName = sortedKeys.first;
    }
  }

  Future<void> _loadContentFromCache() async {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null || _selectedFileName == null) return;

    final cacheKey = '${gistId}_$_selectedFileName';

    final cachedContent = await widget.cacheService.getContent(cacheKey);
    if (cachedContent != null && mounted) {
      setState(() {
        _content = cachedContent;
        _fileContents[_selectedFileName!] = cachedContent;
      });
      return;
    }

    await _fetchContent();
  }

  Future<void> _fetchContent() async {
    if (_selectedFileName == null) return;

    final files = widget.gist['files'] as Map<String, dynamic>?;
    if (files == null || files.isEmpty) return;

    final selectedFile = files[_selectedFileName] as Map<String, dynamic>?;
    final rawUrl = selectedFile?['raw_url'] as String?;

    if (rawUrl != null) {
      try {
        final token = await storage.read(key: 'github_token');
        final headers = <String, String>{};
        if (token != null) {
          headers['Authorization'] = 'Bearer $token';
        }

        final response = await http.get(Uri.parse(rawUrl), headers: headers);
        if (response.statusCode == 200) {
          final gistId = widget.gist['id'] as String;
          final cacheKey = '${gistId}_$_selectedFileName';
          await widget.cacheService.setContent(cacheKey, response.body);
          if (mounted) {
            setState(() {
              _content = response.body;
              _fileContents[_selectedFileName!] = response.body;
            });
          }
        } else {
          if (mounted) {
            setState(() {
              _content = AppLocalizations.of(context)!.errorLoadingContent(response.statusCode);
            });
          }
        }
      } catch (e) {
        if (mounted) {
          setState(() {
            if (isNetworkError(e)) {
              _content = AppLocalizations.of(context)!.internetNotAvailable;
            } else {
              _content = AppLocalizations.of(context)!.errorWithDetails('$e');
            }
          });
        }
      }
    }
  }

  Future<void> _selectFile(String fileName) async {
    if (fileName == _selectedFileName) return;

    setState(() {
      _selectedFileName = fileName;
      _content = null; // null shows the loading indicator
    });

    await _loadContentFromCache();
  }

  Future<void> _copyToClipboard() async {
    if (_content != null) {
      await Clipboard.setData(ClipboardData(text: _content!));
      setState(() {
        _showCopyFeedback = true;
      });

      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          setState(() {
            _showCopyFeedback = false;
          });
        }
      });
    }
  }

  Future<void> _checkStarredStatus() async {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    final cachedStatus = _socialService.getCachedStarredStatus(gistId);
    if (cachedStatus != null && mounted) {
      setState(() {
        _isStarred = cachedStatus;
      });
      return;
    }

    final isStarred = await _socialService.isGistStarred(gistId);
    if (mounted) {
      setState(() {
        _isStarred = isStarred;
      });
    }
  }

  Future<void> _toggleStar() async {
    if (_isStarring) return;

    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    setState(() {
      _isStarring = true;
    });

    try {
      bool success;
      if (_isStarred == true) {
        success = await _socialService.unstarGist(gistId);
      } else {
        success = await _socialService.starGist(gistId);
      }

      if (success && mounted) {
        setState(() {
          _isStarred = !(_isStarred ?? false);
        });
      } else if (!success && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(AppLocalizations.of(context)!.errorStarring)),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isStarring = false;
        });
      }
    }
  }

  Future<void> _forkGist() async {
    if (_isForking) return;

    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    setState(() {
      _isForking = true;
    });

    try {
      final forkedGist = await _socialService.forkGist(gistId);
      if (forkedGist != null && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.forkSuccess),
            backgroundColor: Colors.green,
          ),
        );
        // Refresh the gists list to show the forked gist
        GistsScreen.refreshGists(context);
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(AppLocalizations.of(context)!.errorForking)),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isForking = false;
        });
      }
    }
  }

  Future<void> _shareGistUrl(BuildContext buttonContext) async {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    // Get the button's position for iPad share popover
    final box = buttonContext.findRenderObject() as RenderBox?;
    final sharePositionOrigin = box != null
        ? box.localToGlobal(Offset.zero) & box.size
        : null;

    final gistUrl = GistShareService.getGistUrl(gistId);
    await GistShareService.shareGistUrl(
      gistUrl: gistUrl,
      sharePositionOrigin: sharePositionOrigin,
    );
  }

  bool _isMarkdownFile(String fileName) {
    final lowerName = fileName.toLowerCase();
    return lowerName.endsWith('.md') || lowerName.endsWith('.markdown');
  }

  Future<void> _exportGist(BuildContext buttonContext) async {
    if (_content == null || _selectedFileName == null) {
      await _fetchContent();
      if (_content == null) {
        return;
      }
    }

    if (!buttonContext.mounted) return;

    // Anchor for the share popover (required on iPad)
    final box = buttonContext.findRenderObject() as RenderBox?;
    final sharePositionOrigin = box != null
        ? box.localToGlobal(Offset.zero) & box.size
        : null;

    try {
      final result = await GistShareService.exportGistToFile(
        content: _content!,
        fileName: _selectedFileName!,
        sharePositionOrigin: sharePositionOrigin,
      );

      if (result != null && mounted) {
        // Reveal in Finder if setting is enabled (macOS only)
        if (Platform.isMacOS && ExportSettingsService().revealInFinder) {
          await GistShareService.revealInFinder(result);
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${AppLocalizations.of(context)!.exportError}: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  /// Shows a modal spinner and returns a callback that dismisses it.
  ///
  /// The callback is safe to call more than once and works even if this
  /// widget has been unmounted in the meantime.
  VoidCallback _showLoadingDialog() {
    final navigator = Navigator.of(context);
    var isOpen = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    return () {
      if (isOpen) {
        isOpen = false;
        navigator.pop();
      }
    };
  }

  Future<void> _exportAllFiles(BuildContext buttonContext) async {
    final gistId = widget.gist['id'] as String?;
    final description = widget.gist['description'] as String? ?? '';
    final files = widget.gist['files'] as Map<String, dynamic>?;

    if (gistId == null || files == null) return;

    // Anchor for the share popover (required on iPad)
    final box = buttonContext.findRenderObject() as RenderBox?;
    final sharePositionOrigin = box != null
        ? box.localToGlobal(Offset.zero) & box.size
        : null;

    final closeLoadingDialog = _showLoadingDialog();

    try {
      final Map<String, String> allContents = {};

      for (var fileName in files.keys) {
        String? content;

        if (_fileContents.containsKey(fileName)) {
          content = _fileContents[fileName];
        } else {
          final cacheKey = '${gistId}_$fileName';
          content = await widget.cacheService.getContent(cacheKey);

          if (content == null) {
            final file = files[fileName] as Map<String, dynamic>?;
            final rawUrl = file?['raw_url'] as String?;
            if (rawUrl != null) {
              final token = await storage.read(key: 'github_token');
              final headers = <String, String>{};
              if (token != null) {
                headers['Authorization'] = 'Bearer $token';
              }
              final response = await http.get(Uri.parse(rawUrl), headers: headers);
              if (response.statusCode == 200) {
                content = response.body;
                await widget.cacheService.setContent(cacheKey, content);
                _fileContents[fileName] = content;
              }
            }
          }
        }

        if (content != null) {
          allContents[fileName] = content;
        }
      }

      closeLoadingDialog();
      if (!mounted) return;

      if (allContents.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.exportError),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      final result = await GistShareService.exportAllGistFiles(
        fileContents: allContents,
        gistDescription: description,
        sharePositionOrigin: sharePositionOrigin,
      );

      if (result != null && mounted) {
        // Reveal in Finder if setting is enabled (macOS only)
        if (Platform.isMacOS && ExportSettingsService().revealInFinder) {
          await GistShareService.revealInFinder(result);
        }
      }
    } catch (e) {
      closeLoadingDialog();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${AppLocalizations.of(context)!.exportError}: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showQRCode() {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    final gistUrl = GistShareService.getGistUrl(gistId);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.qrCodeTitle),
        content: SizedBox(
          width: 280,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: QrImageView(
                    data: gistUrl,
                    version: QrVersions.auto,
                    size: 200,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                AppLocalizations.of(context)!.scanToOpen,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              SelectableText(
                gistUrl,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              GistShareService.copyToClipboard(gistUrl);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.urlCopied),
                ),
              );
            },
            child: Text(AppLocalizations.of(context)!.copyGistUrl),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  }

  void _copyEmbedCode() {
    final gistId = widget.gist['id'] as String?;
    final owner = widget.gist['owner'] as Map<String, dynamic>?;
    final ownerLogin = owner?['login'] as String? ?? '';

    if (gistId == null || ownerLogin.isEmpty) return;

    final embedCode = GistShareService.generateEmbedCode(
      gistId: gistId,
      ownerLogin: ownerLogin,
    );

    GistShareService.copyToClipboard(embedCode);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.embedCodeCopied),
        ),
      );
    }
  }

  void _copyGistUrl() {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    final gistUrl = GistShareService.getGistUrl(gistId);
    GistShareService.copyToClipboard(gistUrl);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.urlCopied),
        ),
      );
    }
  }

  Future<void> _togglePin() async {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null || widget.organizationService == null) return;

    final wasPinned = widget.organizationService!.isPinned(gistId);
    await widget.organizationService!.togglePin(gistId);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(wasPinned
              ? AppLocalizations.of(context)!.gistUnpinned
              : AppLocalizations.of(context)!.gistPinned),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  Future<void> _toggleArchive() async {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null || widget.organizationService == null) return;

    final wasArchived = widget.organizationService!.isArchived(gistId);
    await widget.organizationService!.toggleArchive(gistId);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(wasArchived
              ? AppLocalizations.of(context)!.gistUnarchived
              : AppLocalizations.of(context)!.gistArchived),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  Future<void> _deleteSelectedFile() async {
    if (_selectedFileName == null) return;

    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    final confirmed = await DeleteConfirmationDialog.show(
      context: context,
      title: AppLocalizations.of(context)!.deleteFile,
      message: AppLocalizations.of(context)!.deleteFileMessage('$_selectedFileName'),
    );

    if (!confirmed || !mounted) return;

    final closeLoadingDialog = _showLoadingDialog();

    try {
      final token = await storage.read(key: 'github_token');
      if (token == null) {
        throw Exception('No token found');
      }

      // The GitHub API deletes a file from a gist when its entry is set to null.
      final payload = {
        'files': {
          _selectedFileName: null,
        }
      };

      final response = await http.patch(
        Uri.parse('https://api.github.com/gists/$gistId'),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/vnd.github.v3+json',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(payload),
      );

      closeLoadingDialog();
      if (!mounted) return;

      if (response.statusCode == 200) {
        final cacheKey = '${gistId}_$_selectedFileName';
        await widget.cacheService.clearContent(cacheKey);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.fileDeleted('$_selectedFileName')),
              backgroundColor: Colors.green,
            ),
          );
        }

        widget.onGistDeleted?.call();
      } else {
        throw Exception('Failed to delete file: ${response.statusCode}');
      }
    } catch (e) {
      closeLoadingDialog();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.errorDeletingFile('$e')),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _deleteEntireGist() async {
    final gistId = widget.gist['id'] as String?;
    if (gistId == null) return;

    final files = widget.gist['files'] as Map<String, dynamic>?;
    final fileCount = files?.length ?? 0;
    final isSingleFile = fileCount == 1;

    final confirmed = await DeleteConfirmationDialog.show(
      context: context,
      title: AppLocalizations.of(context)!.deleteGist,
      message: isSingleFile
          ? AppLocalizations.of(context)!.deleteGistMessage
          : AppLocalizations.of(context)!.deleteEntireGistMessage,
    );

    if (!confirmed || !mounted) return;

    final closeLoadingDialog = _showLoadingDialog();

    try {
      final token = await storage.read(key: 'github_token');
      if (token == null) {
        throw Exception('No token found');
      }

      final response = await http.delete(
        Uri.parse('https://api.github.com/gists/$gistId'),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/vnd.github.v3+json',
        },
      );

      closeLoadingDialog();
      if (!mounted) return;

      if (response.statusCode == 204) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.gistDeleted),
            backgroundColor: Colors.green,
          ),
        );

        widget.onGistDeleted?.call();
      } else {
        throw Exception('Failed to delete gist: ${response.statusCode}');
      }
    } catch (e) {
      closeLoadingDialog();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.errorDeletingGist('$e')),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Widget _buildFileTree(Map<String, dynamic> files) {
    final fileList = files.keys.toList()..sort();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
            child: Icon(
              Icons.folder_outlined,
              size: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const Divider(height: 1),
          ...fileList.map((fileName) {
            final file = files[fileName] as Map<String, dynamic>;
            final isSelected = fileName == _selectedFileName;
            final language = file['language'] as String?;
            final hasSearchMatch = _filesWithSearchMatch.contains(fileName);

            return InkWell(
              onTap: () => _selectFile(fileName),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.5)
                      : hasSearchMatch
                          ? Theme.of(context).colorScheme.tertiaryContainer.withValues(alpha: 0.3)
                          : null,
                  border: Border(
                    left: BorderSide(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : hasSearchMatch
                              ? Theme.of(context).colorScheme.tertiary
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
                          : hasSearchMatch
                              ? Theme.of(context).colorScheme.tertiary
                              : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        fileName,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: isSelected || hasSearchMatch ? FontWeight.w600 : FontWeight.normal,
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : hasSearchMatch
                                      ? Theme.of(context).colorScheme.tertiary
                                      : null,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (hasSearchMatch && !isSelected)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.search,
                          size: 12,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    if (language != null && language.isNotEmpty)
                      Text(
                        language,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                            ),
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

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin
    final files = widget.gist['files'] as Map<String, dynamic>?;
    if (files == null || files.isEmpty) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.noFilesAvailable),
        ),
      );
    }

    if (_selectedFileName == null || !files.containsKey(_selectedFileName)) {
      _selectedFileName = (files.keys.toList()..sort()).first;
    }

    final selectedFile = files[_selectedFileName] as Map<String, dynamic>?;
    if (selectedFile == null) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(AppLocalizations.of(context)!.fileDataNotAvailable),
        ),
      );
    }

    final fileName = selectedFile['filename'] as String? ?? 'Untitled';
    final language = selectedFile['language'] as String?;
    final description = widget.gist['description'] as String?;
    final createdAt = widget.gist['created_at'] as String?;
    final updatedAt = widget.gist['updated_at'] as String?;
    final hasMultipleFiles = files.length > 1;

    const timeSinceOptions = TimeFormatOptions(
      maxPrecision: 2,
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.08),
            blurRadius: 12,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Pinned/archived badges
            if (widget.organizationService != null) ...[
              Builder(
                builder: (context) {
                  final gistId = widget.gist['id'] as String?;
                  final isPinned = gistId != null &&
                      widget.organizationService!.isPinned(gistId);
                  final isArchived = gistId != null &&
                      widget.organizationService!.isArchived(gistId);

                  if (!isPinned && !isArchived) {
                    return const SizedBox.shrink();
                  }

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        if (isPinned)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withValues(alpha: 0.3),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.push_pin,
                                  size: 14,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  AppLocalizations.of(context)!.pinned,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (isPinned && isArchived) const SizedBox(width: 8),
                        if (isArchived)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .outline
                                  .withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .outline
                                    .withValues(alpha: 0.3),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.archive,
                                  size: 14,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  AppLocalizations.of(context)!.archived,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
            if (description != null && description.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            // File tree for multi-file gists
            if (hasMultipleFiles) _buildFileTree(files),
            Row(
              children: [
                const Icon(Icons.insert_drive_file, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    fileName,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (language != null && language.isNotEmpty) ...[
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                          Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      language,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
                const SizedBox(width: 8),
                Tooltip(
                  message: _showCopyFeedback
                      ? AppLocalizations.of(context)!.copied
                      : AppLocalizations.of(context)!.copyToClipboard,
                  child: Semantics(
                    label: _showCopyFeedback
                        ? AppLocalizations.of(context)!.contentCopiedToClipboard
                        : AppLocalizations.of(context)!.copyGistContentToClipboard,
                    button: true,
                    child: IconButton(
                      icon: Icon(
                        _showCopyFeedback ? Icons.check : Icons.copy,
                        color: _showCopyFeedback
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                      onPressed: _content != null ? _copyToClipboard : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Markdown toggle for .md files
            if (_isMarkdownFile(fileName))
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: SegmentedButton<bool>(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Theme.of(context).colorScheme.primaryContainer;
                      }
                      return Theme.of(context).colorScheme.surface;
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Theme.of(context).colorScheme.onPrimaryContainer;
                      }
                      return Theme.of(context).colorScheme.onSurface;
                    }),
                  ),
                  segments: [
                    ButtonSegment<bool>(
                      value: false,
                      label: Text(AppLocalizations.of(context)!.raw),
                      icon: const Icon(Icons.code, size: 16),
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
            Container(
              constraints: const BoxConstraints(
                minHeight: 100,
                maxHeight: 300,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              child: _content == null
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Consumer<FontSizeProvider>(
                      builder: (context, fontSizeProvider, _) {
                        if (_isMarkdownFile(fileName) && _showMarkdownPreview) {
                          return SingleChildScrollView(
                            padding: const EdgeInsets.all(12),
                            child: MarkdownBody(
                              data: _content!,
                              selectable: true,
                              onTapLink: (text, href, title) {
                                if (href != null) {
                                  launchUrl(Uri.parse(href));
                                }
                              },
                              styleSheet: MarkdownStyleSheet(
                                p: TextStyle(fontSize: fontSizeProvider.fontSize),
                                h1: TextStyle(fontSize: fontSizeProvider.fontSize * 2),
                                h2: TextStyle(fontSize: fontSizeProvider.fontSize * 1.5),
                                h3: TextStyle(fontSize: fontSizeProvider.fontSize * 1.25),
                                code: TextStyle(
                                  fontFamily: 'JetBrainsMono',
                                  fontSize: fontSizeProvider.fontSize * 0.9,
                                  backgroundColor: Theme.of(context).colorScheme.surface,
                                ),
                                codeblockDecoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          );
                        }
                        return SingleChildScrollView(
                          padding: const EdgeInsets.all(12),
                          child: SyntaxHighlightedCode(
                            code: _content!,
                            language: language ?? LanguageUtils.getLanguageFromFilename(fileName),
                            baseStyle: TextStyle(
                              fontFamily: 'JetBrainsMono',
                              fontSize: fontSizeProvider.fontSize,
                              height: 1.5,
                            ),
                          ),
                        );
                      },
                    ),
            ),
            const SizedBox(height: 8),
            // Timestamps
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (createdAt != null)
                  Text(
                    AppLocalizations.of(context)!.createdTimeAgo(timeSince(DateTime.parse(createdAt), timeSinceOptions)),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                if (updatedAt != null)
                  Text(
                    AppLocalizations.of(context)!.lastUpdatedTimeAgo(timeSince(DateTime.parse(updatedAt), timeSinceOptions)),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
              ],
            ),
            const SizedBox(height: 8),
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Share URL button
                Builder(
                  builder: (buttonContext) {
                    return Semantics(
                      label: AppLocalizations.of(context)!.share,
                      button: true,
                      child: IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () => _shareGistUrl(buttonContext),
                        tooltip: AppLocalizations.of(context)!.share,
                      ),
                    );
                  },
                ),
                // More actions menu
                Builder(
                  builder: (menuContext) => PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  tooltip: AppLocalizations.of(context)!.moreActions,
                  onSelected: (value) {
                    switch (value) {
                      case 'export':
                        _exportGist(menuContext);
                        break;
                      case 'export_all':
                        _exportAllFiles(menuContext);
                        break;
                      case 'qr':
                        _showQRCode();
                        break;
                      case 'embed':
                        _copyEmbedCode();
                        break;
                      case 'url':
                        _copyGistUrl();
                        break;
                      case 'pin':
                        _togglePin();
                        break;
                      case 'archive':
                        _toggleArchive();
                        break;
                      case 'delete_file':
                        _deleteSelectedFile();
                        break;
                      case 'delete_gist':
                        _deleteEntireGist();
                        break;
                    }
                  },
                  itemBuilder: (context) {
                    final gistId = widget.gist['id'] as String?;
                    final isPinned = gistId != null &&
                        widget.organizationService?.isPinned(gistId) == true;
                    final isArchived = gistId != null &&
                        widget.organizationService?.isArchived(gistId) == true;

                    return [
                      if (widget.organizationService != null) ...[
                        PopupMenuItem(
                          value: 'pin',
                          child: Row(
                            children: [
                              Icon(isPinned ? Icons.push_pin : Icons.push_pin_outlined),
                              const SizedBox(width: 12),
                              Text(isPinned
                                  ? AppLocalizations.of(context)!.unpin
                                  : AppLocalizations.of(context)!.pin),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 'archive',
                          child: Row(
                            children: [
                              Icon(isArchived ? Icons.unarchive : Icons.archive_outlined),
                              const SizedBox(width: 12),
                              Text(isArchived
                                  ? AppLocalizations.of(context)!.unarchive
                                  : AppLocalizations.of(context)!.archive),
                            ],
                          ),
                        ),
                        const PopupMenuDivider(),
                      ],
                      if (hasMultipleFiles) ...[
                        PopupMenuItem(
                          value: 'export',
                          child: Row(
                            children: [
                              const Icon(Icons.insert_drive_file),
                              const SizedBox(width: 12),
                              Text(AppLocalizations.of(context)!.exportCurrentFile),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 'export_all',
                          child: Row(
                            children: [
                              const Icon(Icons.folder),
                              const SizedBox(width: 12),
                              Text(AppLocalizations.of(context)!.exportAllFiles),
                            ],
                          ),
                        ),
                      ] else
                        PopupMenuItem(
                          value: 'export',
                          child: Row(
                            children: [
                              const Icon(Icons.file_download),
                              const SizedBox(width: 12),
                              Text(AppLocalizations.of(context)!.exportFile),
                            ],
                          ),
                        ),
                      PopupMenuItem(
                        value: 'qr',
                        child: Row(
                          children: [
                            const Icon(Icons.qr_code),
                            const SizedBox(width: 12),
                            Text(AppLocalizations.of(context)!.generateQRCode),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'embed',
                        child: Row(
                          children: [
                            const Icon(Icons.code),
                            const SizedBox(width: 12),
                            Text(AppLocalizations.of(context)!.copyEmbedCode),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'url',
                        child: Row(
                          children: [
                            const Icon(Icons.link),
                            const SizedBox(width: 12),
                            Text(AppLocalizations.of(context)!.copyGistUrl),
                          ],
                        ),
                      ),
                      const PopupMenuDivider(),
                      if (hasMultipleFiles) ...[
                        PopupMenuItem(
                          value: 'delete_file',
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline,
                                  color: Theme.of(context).colorScheme.error),
                              const SizedBox(width: 12),
                              Text(
                                AppLocalizations.of(context)!.deleteSelectedFile,
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.error),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 'delete_gist',
                          child: Row(
                            children: [
                              Icon(Icons.delete_forever,
                                  color: Theme.of(context).colorScheme.error),
                              const SizedBox(width: 12),
                              Text(
                                AppLocalizations.of(context)!.deleteAllFiles,
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.error),
                              ),
                            ],
                          ),
                        ),
                      ] else
                        PopupMenuItem(
                          value: 'delete_gist',
                          child: Row(
                            children: [
                              Icon(Icons.delete_forever,
                                  color: Theme.of(context).colorScheme.error),
                              const SizedBox(width: 12),
                              Text(
                                AppLocalizations.of(context)!.deleteGist,
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.error),
                              ),
                            ],
                          ),
                        ),
                    ];
                  },
                ),
                ),
                // Star button
                Semantics(
                  label: _isStarred == true
                      ? AppLocalizations.of(context)!.unstar
                      : AppLocalizations.of(context)!.star,
                  button: true,
                  child: IconButton(
                    icon: _isStarring
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Icon(
                            _isStarred == true
                                ? Icons.star
                                : Icons.star_border,
                            color: _isStarred == true
                                ? Colors.amber
                                : null,
                          ),
                    onPressed: _toggleStar,
                    tooltip: _isStarred == true
                        ? AppLocalizations.of(context)!.unstar
                        : AppLocalizations.of(context)!.star,
                  ),
                ),
                // Fork button
                Semantics(
                  label: AppLocalizations.of(context)!.fork,
                  button: true,
                  child: IconButton(
                    icon: _isForking
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.fork_right),
                    onPressed: _forkGist,
                    tooltip: AppLocalizations.of(context)!.fork,
                  ),
                ),
                // Edit button
                Semantics(
                  label: AppLocalizations.of(context)!.editGist,
                  button: true,
                  child: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      if (_content == null) {
                        await _fetchContent();
                      }

                      if (_content != null && context.mounted) {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GistEditScreen(
                              gist: widget.gist,
                              content: _content!,
                              filename: fileName,
                              language: language ?? 'plaintext',
                              cacheService: widget.cacheService,
                              syncQueueService: widget.syncQueueService,
                              onGistUpdated: () {
                                Navigator.pop(context, true);
                              },
                            ),
                          ),
                        );

                        if (result == true) {
                          // The edit screen has already updated the persistent
                          // cache; drop stale in-memory copies and reload.
                          _fileContents.clear();
                          await _loadContentFromCache();
                          if (context.mounted) {
                            GistsScreen.refreshGists(context);
                          }
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
