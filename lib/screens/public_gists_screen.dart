import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:time_since/time_since.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/gist_social_service.dart';
import '../data/gist_cache_service.dart';
import '../data/gist_share_service.dart';
import '../themes/font_size_provider.dart';
import '../components/user_profile_dialog.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class PublicGistsScreen extends StatefulWidget {
  final GistCacheService cacheService;

  const PublicGistsScreen({
    super.key,
    required this.cacheService,
  });

  @override
  State<PublicGistsScreen> createState() => _PublicGistsScreenState();
}

class _PublicGistsScreenState extends State<PublicGistsScreen> {
  final GistSocialService _socialService = GistSocialService();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  List<Map<String, dynamic>> _publicGists = [];
  List<Map<String, dynamic>> _filteredGists = [];
  bool _isLoading = true;
  bool _isLoadingMore = false;
  bool _isSearching = false;
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isSearchMode = false;
  final Map<String, bool> _starredStatus = {};
  final Map<String, bool> _starringInProgress = {};
  final Map<String, bool> _forkingInProgress = {};
  int _searchRequestId = 0; // Incremented to invalidate in-flight searches
  bool _showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _loadPublicGists();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Load more gists when near bottom
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !_isLoadingMore &&
        _hasMore) {
      _loadMoreGists();
    }

    // Show the scroll-to-top button once scrolled more than one screen height
    final screenHeight = MediaQuery.of(context).size.height;
    final shouldShow = _scrollController.offset > screenHeight;
    if (shouldShow != _showScrollToTopButton) {
      setState(() {
        _showScrollToTopButton = shouldShow;
      });
    }
  }

  Future<void> _loadPublicGists() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final gists = await _socialService.getPublicGists(page: 1, perPage: 30);
      if (mounted) {
        setState(() {
          _publicGists = gists;
          _filteredGists = gists;
          _currentPage = 1;
          _hasMore = gists.length >= 30;
          _isLoading = false;
        });
        _filterGists();
        _checkStarredStatusBatch(gists);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorLoadingPublicGists('$e'))),
        );
      }
    }
  }

  Future<void> _loadMoreGists() async {
    if (_isLoadingMore || !_hasMore) return;

    setState(() {
      _isLoadingMore = true;
    });

    try {
      final nextPage = _currentPage + 1;
      final gists =
          await _socialService.getPublicGists(page: nextPage, perPage: 30);
      if (mounted) {
        setState(() {
          _publicGists.addAll(gists);
          _currentPage = nextPage;
          _hasMore = gists.length >= 30;
          _isLoadingMore = false;
        });
        _filterGists();
        _checkStarredStatusBatch(gists);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoadingMore = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorLoadingPublicGists('$e'))),
        );
      }
    }
  }

  void _filterGists() {
    final searchTerm = _searchController.text.toLowerCase();
    if (searchTerm.isEmpty) {
      setState(() {
        _filteredGists = _publicGists;
        _isSearchMode = false;
      });
    } else {
      setState(() {
        _filteredGists = _publicGists.where((gist) {
          final description =
              (gist['description'] as String? ?? '').toLowerCase();
          final owner = gist['owner'] as Map<String, dynamic>?;
          final ownerLogin = (owner?['login'] as String? ?? '').toLowerCase();
          final files = gist['files'] as Map<String, dynamic>? ?? {};

          if (description.contains(searchTerm)) return true;

          if (ownerLogin.contains(searchTerm)) return true;

          for (var fileName in files.keys) {
            if (fileName.toLowerCase().contains(searchTerm)) return true;
          }

          return false;
        }).toList();
      });
    }
  }

  void _clearSearch() {
    _searchController.clear();
    _searchRequestId++; // Invalidate any ongoing search
    setState(() {
      _isSearching = false;
      _isSearchMode = false;
    });
    _loadPublicGists();
  }

  Future<void> _searchGitHub(String query) async {
    if (query.isEmpty) {
      _clearSearch();
      return;
    }

    final currentRequestId = ++_searchRequestId;

    setState(() {
      _isSearching = true;
      _isSearchMode = true;
      _hasMore = false; // Disable pagination for search results
    });

    try {
      List<Map<String, dynamic>> results;

      // A leading @ means "show this user's gists" and hits the API.
      if (query.startsWith('@')) {
        final username = query.substring(1);
        results = await _socialService.getUserGists(username);
      } else {
        // The GitHub API has no gist search endpoint, so filter the
        // already-loaded gists by description, owner, filename, and language.
        final searchTerm = query.toLowerCase();
        results = _publicGists.where((gist) {
          final description =
              (gist['description'] as String? ?? '').toLowerCase();
          final owner = gist['owner'] as Map<String, dynamic>?;
          final ownerLogin = (owner?['login'] as String? ?? '').toLowerCase();
          final files = gist['files'] as Map<String, dynamic>? ?? {};

          if (description.contains(searchTerm)) return true;

          if (ownerLogin.contains(searchTerm)) return true;

          for (var fileName in files.keys) {
            if (fileName.toLowerCase().contains(searchTerm)) return true;
            final file = files[fileName] as Map<String, dynamic>?;
            final language = (file?['language'] as String? ?? '').toLowerCase();
            if (language.contains(searchTerm)) return true;
          }

          return false;
        }).toList();
      }

      // Ignore results from a search that has since been superseded or cleared.
      if (mounted && currentRequestId == _searchRequestId) {
        setState(() {
          _filteredGists = results;
          _isSearching = false;
        });
        _checkStarredStatusBatch(results);
      }
    } catch (e) {
      if (mounted && currentRequestId == _searchRequestId) {
        setState(() {
          _isSearching = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorSearching('$e'))),
        );
      }
    }
  }

  void _showUserProfile(String username) {
    UserProfileDialog.show(
      context,
      username,
      onViewGists: (login) {
        _searchController.text = '@$login';
        _searchGitHub('@$login');
      },
    );
  }

  Future<void> _checkStarredStatusBatch(List<Map<String, dynamic>> gists) async {
    final updates = <String, bool>{};
    for (var gist in gists) {
      final gistId = gist['id'] as String?;
      if (gistId != null && !_starredStatus.containsKey(gistId)) {
        updates[gistId] = await _socialService.isGistStarred(gistId);
      }
    }
    if (mounted && updates.isNotEmpty) {
      setState(() {
        _starredStatus.addAll(updates);
      });
    }
  }

  Future<void> _toggleStar(String gistId) async {
    if (_starringInProgress[gistId] == true) return;

    setState(() {
      _starringInProgress[gistId] = true;
    });

    try {
      bool success;
      if (_starredStatus[gistId] == true) {
        success = await _socialService.unstarGist(gistId);
      } else {
        success = await _socialService.starGist(gistId);
      }

      if (success && mounted) {
        setState(() {
          _starredStatus[gistId] = !(_starredStatus[gistId] ?? false);
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _starringInProgress[gistId] = false;
        });
      }
    }
  }

  Future<void> _forkGist(String gistId) async {
    if (_forkingInProgress[gistId] == true) return;

    setState(() {
      _forkingInProgress[gistId] = true;
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
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(AppLocalizations.of(context)!.errorForking)),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _forkingInProgress[gistId] = false;
        });
      }
    }
  }

  Future<void> _sharePublicGist(String gistId, BuildContext buttonContext) async {
    final gistUrl = GistShareService.getGistUrl(gistId);

    // Anchor for the share popover (required on iPad)
    final box = buttonContext.findRenderObject() as RenderBox?;
    final sharePositionOrigin = box != null
        ? box.localToGlobal(Offset.zero) & box.size
        : null;

    await GistShareService.shareGistUrl(
      gistUrl: gistUrl,
      sharePositionOrigin: sharePositionOrigin,
    );
  }

  void _showQRCode(String gistId) {
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

  void _copyEmbedCode(String gistId, String ownerLogin) {
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

  void _copyGistUrl(String gistId) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.publicGists),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.searchPublicGistsHint,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: _clearSearch,
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    onSubmitted: (value) => _searchGitHub(value),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _isSearching
                      ? null
                      : () => _searchGitHub(_searchController.text),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                  child: Text(AppLocalizations.of(context)!.search),
                ),
              ],
            ),
          ),
          if (_isSearchMode && !_isSearching)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Icon(Icons.info_outline, size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _searchController.text.startsWith('@')
                          ? AppLocalizations.of(context)!.showingGistsFromUser(_filteredGists.length)
                          : AppLocalizations.of(context)!.foundInLoadedGists(_filteredGists.length),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  TextButton(
                    onPressed: _clearSearch,
                    child: Text(AppLocalizations.of(context)!.clear),
                  ),
                ],
              ),
            ),
          Expanded(
            child: _isLoading || _isSearching
                ? const Center(child: CircularProgressIndicator())
                : _filteredGists.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.search_off, size: 48),
                            const SizedBox(height: 16),
                            Text(AppLocalizations.of(context)!.noPublicGists),
                            if (_isSearchMode) ...[
                              const SizedBox(height: 8),
                              Text(AppLocalizations.of(context)!.tryDifferentSearch),
                            ],
                          ],
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: _isSearchMode
                            ? () => _searchGitHub(_searchController.text)
                            : _loadPublicGists,
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount:
                              _filteredGists.length + (_hasMore ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index == _filteredGists.length) {
                              return const Padding(
                                padding: EdgeInsets.all(16),
                                child:
                                    Center(child: CircularProgressIndicator()),
                              );
                            }

                            final gist = _filteredGists[index];
                            return _buildPublicGistCard(gist);
                          },
                        ),
                      ),
          ),
        ],
      ),
      floatingActionButton: AnimatedOpacity(
        opacity: _showScrollToTopButton ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: AnimatedScale(
          scale: _showScrollToTopButton ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 200),
          child: Semantics(
            label: AppLocalizations.of(context)!.scrollToTop,
            button: true,
            child: FloatingActionButton(
              onPressed: _showScrollToTopButton
                  ? () {
                      _scrollController.animateTo(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    }
                  : null,
              tooltip: AppLocalizations.of(context)!.scrollToTop,
              child: const Icon(Icons.arrow_upward),
            ),
          ),
        ),
      ),
    );
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

  Future<void> _showGistDetail(Map<String, dynamic> gist) async {
    final files = gist['files'] as Map<String, dynamic>? ?? {};
    if (files.isEmpty) return;

    final firstFileName = files.keys.first;
    final firstFile = files[firstFileName] as Map<String, dynamic>?;
    final rawUrl = firstFile?['raw_url'] as String?;

    if (rawUrl == null) return;

    final closeLoadingDialog = _showLoadingDialog();

    try {
      final token = await _storage.read(key: 'github_token');
      final headers = <String, String>{};
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }

      final response = await http.get(Uri.parse(rawUrl), headers: headers);
      closeLoadingDialog();
      if (!mounted) return;

      if (response.statusCode == 200) {
        _showGistContentDialog(gist, files, firstFileName, response.body);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorLoadingContent(response.statusCode))),
        );
      }
    } catch (e) {
      closeLoadingDialog();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorWithDetails('$e'))),
        );
      }
    }
  }

  bool _isMarkdownFile(String fileName) {
    final lowerName = fileName.toLowerCase();
    return lowerName.endsWith('.md') || lowerName.endsWith('.markdown');
  }

  void _showGistContentDialog(
    Map<String, dynamic> gist,
    Map<String, dynamic> files,
    String selectedFileName,
    String content,
  ) {
    final description = gist['description'] as String? ?? AppLocalizations.of(context)!.noDescription;
    final owner = gist['owner'] as Map<String, dynamic>?;
    final ownerLogin = owner?['login'] as String? ?? 'Unknown';

    // Declared outside the StatefulBuilder so it survives the builder's rebuilds.
    bool showMarkdownPreview = true;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (context, setSheetState) {
          return DraggableScrollableSheet(
            initialChildSize: 0.9,
            minChildSize: 0.5,
            maxChildSize: 0.95,
            expand: false,
            builder: (context, scrollController) => Column(
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              description.isEmpty ? AppLocalizations.of(context)!.noDescription : description,
                              style: Theme.of(context).textTheme.titleMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                      Text(
                        AppLocalizations.of(context)!.byAuthor(ownerLogin),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 8),
                      // File tabs
                      if (files.length > 1)
                        SizedBox(
                          height: 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: files.keys.map((fileName) {
                              final isSelected = fileName == selectedFileName;
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: FilterChip(
                                  label: Text(fileName),
                                  selected: isSelected,
                                  onSelected: (selected) {
                                    Navigator.pop(context);
                                    _loadAndShowFile(gist, files, fileName);
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      else
                        Text(
                          selectedFileName,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                // Markdown toggle for .md files
                if (_isMarkdownFile(selectedFileName))
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SegmentedButton<bool>(
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
                      selected: {showMarkdownPreview},
                      onSelectionChanged: (Set<bool> newSelection) {
                        setSheetState(() {
                          showMarkdownPreview = newSelection.first;
                        });
                      },
                    ),
                  ),
                // Content
                Expanded(
                  child: Consumer<FontSizeProvider>(
                    builder: (context, fontSizeProvider, _) {
                      if (_isMarkdownFile(selectedFileName) && showMarkdownPreview) {
                        return SingleChildScrollView(
                          controller: scrollController,
                          padding: const EdgeInsets.all(16),
                          child: MarkdownBody(
                            data: content,
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
                        controller: scrollController,
                        padding: const EdgeInsets.all(16),
                        child: SelectableText(
                          content,
                          style: TextStyle(
                            fontFamily: 'JetBrainsMono',
                            fontSize: fontSizeProvider.fontSize,
                            height: 1.5,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _loadAndShowFile(
    Map<String, dynamic> gist,
    Map<String, dynamic> files,
    String fileName,
  ) async {
    final file = files[fileName] as Map<String, dynamic>?;
    final rawUrl = file?['raw_url'] as String?;
    if (rawUrl == null) return;

    final closeLoadingDialog = _showLoadingDialog();

    try {
      final token = await _storage.read(key: 'github_token');
      final headers = <String, String>{};
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }

      final response = await http.get(Uri.parse(rawUrl), headers: headers);
      closeLoadingDialog();
      if (!mounted) return;

      if (response.statusCode == 200) {
        _showGistContentDialog(gist, files, fileName, response.body);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorLoadingContent(response.statusCode))),
        );
      }
    } catch (e) {
      closeLoadingDialog();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorWithDetails('$e'))),
        );
      }
    }
  }

  Widget _buildPublicGistCard(Map<String, dynamic> gist) {
    final gistId = gist['id'] as String?;
    final description = gist['description'] as String? ?? AppLocalizations.of(context)!.noDescription;
    final owner = gist['owner'] as Map<String, dynamic>?;
    final ownerLogin = owner?['login'] as String? ?? 'Unknown';
    final ownerAvatar = owner?['avatar_url'] as String?;
    final files = gist['files'] as Map<String, dynamic>? ?? {};
    final createdAt = gist['created_at'] as String?;
    final updatedAt = gist['updated_at'] as String?;

    const timeSinceOptions = TimeFormatOptions(
      maxPrecision: 2,
    );

    final isStarred = _starredStatus[gistId] ?? false;
    final isStarring = _starringInProgress[gistId] ?? false;
    final isForking = _forkingInProgress[gistId] ?? false;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () => _showGistDetail(gist),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Owner info
            Row(
              children: [
                if (ownerAvatar != null)
                  GestureDetector(
                    onTap: () => _showUserProfile(ownerLogin),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: ownerAvatar,
                        width: 24,
                        height: 24,
                        placeholder: (context, url) => const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.person, size: 24),
                      ),
                    ),
                  ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () => _showUserProfile(ownerLogin),
                  child: Text(
                    ownerLogin,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Description
            Text(
              description.isEmpty ? AppLocalizations.of(context)!.noDescription : description,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),

            // Files list
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: files.keys.take(5).map((fileName) {
                final file = files[fileName] as Map<String, dynamic>?;
                final language = file?['language'] as String? ?? 'Text';
                return Chip(
                  label: Text(
                    fileName,
                    style: const TextStyle(fontSize: 11),
                  ),
                  avatar: Text(
                    language.isNotEmpty ? language[0].toUpperCase() : 'T',
                    style: const TextStyle(fontSize: 10),
                  ),
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                );
              }).toList(),
            ),
            if (files.length > 5)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  AppLocalizations.of(context)!.moreFiles(files.length - 5),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
            const SizedBox(height: 12),

            // Footer with timestamps and actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (createdAt != null)
                        Text(
                          AppLocalizations.of(context)!.createdTimeAgo(timeSince(DateTime.parse(createdAt), timeSinceOptions)),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      if (updatedAt != null)
                        Text(
                          AppLocalizations.of(context)!.updatedTimeAgo(timeSince(DateTime.parse(updatedAt), timeSinceOptions)),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                // Share button
                Builder(
                  builder: (buttonContext) => IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: gistId != null
                        ? () => _sharePublicGist(gistId, buttonContext)
                        : null,
                    tooltip: AppLocalizations.of(context)!.share,
                  ),
                ),
                // More actions menu
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  tooltip: AppLocalizations.of(context)!.moreActions,
                  onSelected: (value) {
                    if (gistId == null) return;
                    switch (value) {
                      case 'qr':
                        _showQRCode(gistId);
                        break;
                      case 'embed':
                        _copyEmbedCode(gistId, ownerLogin);
                        break;
                      case 'url':
                        _copyGistUrl(gistId);
                        break;
                    }
                  },
                  itemBuilder: (context) => [
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
                  ],
                ),
                // Star button
                IconButton(
                  icon: isStarring
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Icon(
                          isStarred ? Icons.star : Icons.star_border,
                          color: isStarred ? Colors.amber : null,
                        ),
                  onPressed:
                      gistId != null ? () => _toggleStar(gistId) : null,
                  tooltip: isStarred
                      ? AppLocalizations.of(context)!.unstar
                      : AppLocalizations.of(context)!.star,
                ),
                // Fork button
                IconButton(
                  icon: isForking
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.fork_right),
                  onPressed: gistId != null ? () => _forkGist(gistId) : null,
                  tooltip: AppLocalizations.of(context)!.fork,
                ),
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
