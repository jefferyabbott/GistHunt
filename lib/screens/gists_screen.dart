import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../components/gist_card.dart';
import '../components/gist_search_bar.dart';
import '../components/settings_drawer.dart';
import '../data/gist_cache_service.dart';
import '../data/connectivity_service.dart';
import '../data/sync_queue_service.dart';
import '../data/gist_organization_service.dart';
import '../utils/network_utils.dart';
import 'gist_edit_screen.dart';
import 'conflict_resolution_screen.dart';
import 'public_gists_screen.dart';
import 'login_screen.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class GistsScreen extends StatefulWidget {
  const GistsScreen({super.key});

  static void refreshGists(BuildContext context) {
    final state = context.findAncestorStateOfType<_GistsScreenState>();
    state?._loadUserDataAndGists();
  }

  @override
  State<GistsScreen> createState() => _GistsScreenState();
}

class _GistsScreenState extends State<GistsScreen> {
  final storage = const FlutterSecureStorage();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  late final GistCacheService _cacheService;
  final ConnectivityService _connectivityService = ConnectivityService();
  final SyncQueueService _syncQueueService = SyncQueueService();
  final GistOrganizationService _organizationService = GistOrganizationService();
  List<dynamic> gists = [];
  List<dynamic> filteredGists = [];
  Set<String> availableLanguages = {};
  late String? selectedLanguage;
  bool isLoading = true;
  bool isInitialLoad = true;
  String? username;
  String? avatarUrl;
  Timer? _debounceTimer;
  int _refreshCounter = 0; // Forces card rebuild on refresh
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  bool _isOnline = true;
  StreamSubscription<bool>? _connectivitySubscription;
  bool _showScrollToTopButton = false;
  Timer? _connectivityRetryTimer;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _initializeServices();
  }

  void _onScroll() {
    // Show UP FAB when scrolled more than one screen height
    if (_scrollController.hasClients) {
      final screenHeight = MediaQuery.of(context).size.height;
      final shouldShow = _scrollController.offset > screenHeight;
      if (shouldShow != _showScrollToTopButton) {
        setState(() {
          _showScrollToTopButton = shouldShow;
        });
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    selectedLanguage = AppLocalizations.of(context)!.allLanguages;
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _connectivityRetryTimer?.cancel();
    _scrollController.dispose();
    _searchController.dispose();
    _connectivitySubscription?.cancel();
    _syncQueueService.removeListener(_onSyncQueueChanged);
    _organizationService.removeListener(_onOrganizationChanged);
    super.dispose();
  }

  Future<void> _initializeServices() async {
    _cacheService = await GistCacheService.create();

    await _connectivityService.initialize();
    _isOnline = _connectivityService.isConnected;

    _connectivitySubscription =
        _connectivityService.connectionStream.listen((isConnected) {
      if (mounted) {
        setState(() {
          _isOnline = isConnected;
        });
        // Flush any operations queued while offline once we're back online
        if (isConnected && _syncQueueService.hasPendingOperations) {
          _syncQueueService.syncPendingOperations();
        }
      }
    });

    final token = await storage.read(key: 'github_token');
    if (token != null) {
      await _syncQueueService.initialize(token);
    }

    _syncQueueService.addListener(_onSyncQueueChanged);

    await _organizationService.initialize();
    _organizationService.addListener(_onOrganizationChanged);

    _loadUserDataAndGists();
  }

  void _onSyncQueueChanged() {
    if (mounted) {
      setState(() {
        // Trigger rebuild to update sync status indicators
      });
    }
  }

  void _onOrganizationChanged() {
    if (mounted) {
      _filterGists();
    }
  }

  void _sortGistsByDate(List<dynamic> gistList) {
    gistList.sort((a, b) {
      final DateTime dateA = DateTime.parse(a['updated_at']);
      final DateTime dateB = DateTime.parse(b['updated_at']);
      return dateB.compareTo(dateA); // Newest first
    });
  }

  Future<bool> _gistMatchesSearch(dynamic gist, String searchTerm) async {
    if (searchTerm.isEmpty) return true;

    final description = gist['description']?.toString().toLowerCase() ?? '';
    final files = gist['files'] as Map<String, dynamic>?;

    if (files == null) return false;

    if (description.contains(searchTerm)) {
      return true;
    }

    for (var file in files.values) {
      final filename = file['filename']?.toString().toLowerCase() ?? '';
      if (filename.contains(searchTerm)) {
        return true;
      }
    }

    // Also search cached file contents
    final gistId = gist['id'] as String?;
    if (gistId != null) {
      // Legacy cache entries are keyed by gist ID only
      final oldCachedContent = await _cacheService.getContent(gistId);
      if (oldCachedContent != null && oldCachedContent.toLowerCase().contains(searchTerm)) {
        return true;
      }

      for (var fileName in files.keys) {
        final cacheKey = '${gistId}_$fileName';
        final cachedContent = await _cacheService.getContent(cacheKey);
        if (cachedContent != null && cachedContent.toLowerCase().contains(searchTerm)) {
          return true;
        }
      }
    }

    return false;
  }

  bool _gistMatchesLanguage(dynamic gist, String? language) {
    if (language == null ||
        language == AppLocalizations.of(context)!.allLanguages) {
      return true;
    }

    final files = gist['files'] as Map<String, dynamic>?;
    if (files == null) return false;

    return files.values.any((file) => file['language']?.toString() == language);
  }

  void _filterGists() {
    // Debounce: search may scan cached file contents, so avoid running it on every keystroke
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 300), () async {
      if (!mounted) return;

      final searchTerm = _searchController.text.toLowerCase();
      final isSearching = searchTerm.isNotEmpty;

      final List<dynamic> tempFilteredGists = [];

      for (var gist in gists) {
        final matchesSearch = await _gistMatchesSearch(gist, searchTerm);
        final matchesLanguage = _gistMatchesLanguage(gist, selectedLanguage);

        if (matchesSearch && matchesLanguage) {
          tempFilteredGists.add(gist);
        }
      }

      if (mounted) {
        setState(() {
          // Archived gists are hidden normally but included in search results
          filteredGists = _organizationService.sortAndOrganizeGists(
            tempFilteredGists,
            includeArchived: isSearching,
          );
        });
      }
    });
  }

  void _updateAvailableLanguages() {
    availableLanguages.clear();
    for (var gist in gists) {
      final files = gist['files'] as Map<String, dynamic>?;
      if (files != null) {
        for (var file in files.values) {
          if (file['language'] != null &&
              file['language'].toString().isNotEmpty) {
            availableLanguages.add(file['language'].toString());
          }
        }
      }
    }
    availableLanguages = Set<String>.from(availableLanguages.toList()..sort());
  }

  Future<void> _handleUnauthorized() async {
    await storage.delete(key: 'github_token');
    if (mounted) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (route) => false,
      );
    }
  }

  Future<void> _loadUserDataAndGists() async {
    if (!mounted) return;

    setState(() {
      isLoading = true;
    });

    try {
      final token = await storage.read(key: 'github_token');
      if (token == null) {
        throw Exception('No token found');
      }

      if (!_isOnline) {
        await _loadFromCache();
        _scheduleConnectivityRetry();
        return;
      }

      final userResponse = await http.get(
        Uri.parse('https://api.github.com/user'),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/vnd.github.v3+json',
        },
      );

      // 401 means the token expired or was revoked
      if (userResponse.statusCode == 401) {
        await _handleUnauthorized();
        return;
      }

      if (userResponse.statusCode == 200) {
        final userData = json.decode(userResponse.body);
        if (mounted) {
          setState(() {
            username = userData['login'];
            avatarUrl = userData['avatar_url'];
          });
          // Cached so the header can be shown while offline
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('cached_username', userData['login']);
          await prefs.setString('cached_avatar_url', userData['avatar_url']);
        }
      }

      final gistsResponse = await http.get(
        Uri.parse('https://api.github.com/gists'),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/vnd.github.v3+json',
        },
      );

      if (gistsResponse.statusCode == 401) {
        await _handleUnauthorized();
        return;
      }

      if (gistsResponse.statusCode == 200) {
        _connectivityRetryTimer?.cancel();
        _connectivityRetryTimer = null;
        final fetchedGists = json.decode(gistsResponse.body);
        if (mounted) {
          // Clear stale cache for updated gists BEFORE rendering
          await _clearStaleCacheForGists(fetchedGists);

          await _syncQueueService
              .setCachedGistList(List<Map<String, dynamic>>.from(fetchedGists));

          setState(() {
            gists = List<dynamic>.from(fetchedGists);
            _sortGistsByDate(gists);
            // Apply organization (pinned at top, filter archived)
            filteredGists = _organizationService.sortAndOrganizeGists(gists);
            isLoading = false;
            isInitialLoad = false;
            _refreshCounter++; // Force cards to rebuild with fresh state
          });
          _updateAvailableLanguages();
          // Intentionally not awaited: prefetch runs in the background
          _prefetchGistContent();
        }
      } else {
        throw Exception('Failed to load gists: ${gistsResponse.statusCode}');
      }
    } catch (e) {
      // On network errors, fall back to cached data and retry later
      if (!_isOnline || isNetworkError(e)) {
        await _loadFromCache();
        _scheduleConnectivityRetry();
        return;
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorWithDetails('$e'))),
        );
        setState(() {
          isLoading = false;
          isInitialLoad = false;
        });
      }
    }
  }

  void _scheduleConnectivityRetry() {
    if (_connectivityRetryTimer != null && _connectivityRetryTimer!.isActive) {
      return;
    }
    _connectivityRetryTimer =
        Timer.periodic(const Duration(seconds: 30), (timer) async {
      if (!mounted) {
        timer.cancel();
        return;
      }
      await _connectivityService.recheckConnection();
      if (_connectivityService.isConnected) {
        timer.cancel();
        _connectivityRetryTimer = null;
        _loadUserDataAndGists();
      }
    });
  }

  Future<void> _loadFromCache() async {
    final cachedGists = await _syncQueueService.getCachedGistList();
    final prefs = await SharedPreferences.getInstance();
    final cachedUsername = prefs.getString('cached_username');
    final cachedAvatarUrl = prefs.getString('cached_avatar_url');

    if (mounted) {
      setState(() {
        if (cachedUsername != null) username = cachedUsername;
        if (cachedAvatarUrl != null) avatarUrl = cachedAvatarUrl;
        gists = List<dynamic>.from(cachedGists);
        _sortGistsByDate(gists);
        // Apply organization (pinned at top, filter archived)
        filteredGists = _organizationService.sortAndOrganizeGists(gists);
        isLoading = false;
        isInitialLoad = false;
      });
      _updateAvailableLanguages();

      if (cachedGists.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.offlineNoCachedGists),
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  void _handleGistCreated(dynamic newGist) {
    if (!mounted) return;
    setState(() {
      gists.insert(0, newGist);
      _sortGistsByDate(gists);
      // Apply organization (pinned at top, filter archived)
      filteredGists = _organizationService.sortAndOrganizeGists(gists);
      _refreshCounter++; // Force cards to rebuild
    });
    _updateAvailableLanguages();
  }

  Future<void> _clearStaleCacheForGists(List<dynamic> fetchedGists) async {
    // Clear ALL cached content for ALL gists on refresh
    // This ensures we always fetch fresh data
    for (var gist in fetchedGists) {
      final gistId = gist['id'] as String?;
      if (gistId == null) continue;

      final files = gist['files'] as Map<String, dynamic>?;
      if (files == null) continue;

      for (var fileName in files.keys) {
        final cacheKey = '${gistId}_$fileName';
        await _cacheService.clearContent(cacheKey);
      }
      // Also clear the legacy cache entry keyed by gist ID only
      await _cacheService.clearContent(gistId);
    }
  }

  void _showSyncStatusDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.syncStatus),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_syncQueueService.isSyncing)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                      const SizedBox(width: 8),
                      Text(AppLocalizations.of(context)!.syncing),
                    ],
                  ),
                ),
              Text(AppLocalizations.of(context)!.pendingCountLabel(_syncQueueService.pendingCount)),
              Text(AppLocalizations.of(context)!.conflictCountLabel(_syncQueueService.conflictCount)),
              const SizedBox(height: 16),
              if (_syncQueueService.queue.isNotEmpty) ...[
                Text(AppLocalizations.of(context)!.operationsLabel,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ..._syncQueueService.queue.map((op) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Icon(
                            op.status.name == 'conflict'
                                ? Icons.warning_amber
                                : op.status.name == 'failed'
                                    ? Icons.error_outline
                                    : op.status.name == 'syncing'
                                        ? Icons.sync
                                        : Icons.schedule,
                            size: 16,
                            color: op.status.name == 'conflict'
                                ? Colors.orange
                                : op.status.name == 'failed'
                                    ? Colors.red
                                    : Colors.blue,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${op.type.name.toUpperCase()}: ${op.data['description'] ?? op.gistId}',
                              style: const TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ],
          ),
        ),
        actions: [
          if (_syncQueueService.conflictCount > 0)
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showConflictResolutionScreen();
              },
              child: Text(AppLocalizations.of(context)!.resolveConflicts),
            ),
          if (!_isOnline && _syncQueueService.pendingCount > 0)
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(AppLocalizations.of(context)!.willSyncWhenRestored)),
                );
              },
              child: Text(AppLocalizations.of(context)!.ok),
            )
          else if (_syncQueueService.pendingCount > 0 ||
              _syncQueueService.failedCount > 0)
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _syncQueueService.syncPendingOperations(retryAllFailed: true);
              },
              child: Text(AppLocalizations.of(context)!.syncNow),
            ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  }

  void _showConflictResolutionScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConflictResolutionScreen(
          syncQueueService: _syncQueueService,
          onResolved: () {
            _loadUserDataAndGists();
          },
        ),
      ),
    );
  }

  Future<void> _prefetchGistContent() async {
    // Pre-fetch content for all files in all gists in the background
    // This runs silently without triggering rebuilds
    for (var gist in gists) {
      if (!mounted) return;

      final gistId = gist['id'] as String?;
      if (gistId == null) continue;

      final updatedAtStr = gist['updated_at'] as String?;
      DateTime? gistUpdatedAt;
      if (updatedAtStr != null) {
        gistUpdatedAt = DateTime.tryParse(updatedAtStr);
      }

      final files = gist['files'] as Map<String, dynamic>?;
      if (files != null && files.isNotEmpty) {
        for (var fileName in files.keys) {
          if (!mounted) return;

          final cacheKey = '${gistId}_$fileName';

          // Check if cache is stale (gist updated after we cached)
          bool shouldFetch = true;
          if (gistUpdatedAt != null) {
            final isStale = await _cacheService.isCacheStale(cacheKey, gistUpdatedAt);
            if (!isStale) {
              final cached = await _cacheService.getContent(cacheKey);
              if (cached != null) {
                shouldFetch = false;
              }
            } else {
              await _cacheService.clearContent(cacheKey);
            }
          } else {
            // No timestamp, check if already cached
            final cached = await _cacheService.getContent(cacheKey);
            if (cached != null) shouldFetch = false;
          }

          if (!shouldFetch) continue;

          final file = files[fileName] as Map<String, dynamic>?;
          final rawUrl = file?['raw_url'] as String?;

          if (rawUrl != null) {
            try {
              final response = await http.get(Uri.parse(rawUrl));
              if (response.statusCode == 200 && mounted) {
                await _cacheService.setContent(cacheKey, response.body);
              }
            } catch (e) {
              // Prefetch is best-effort; skip this file and continue
            }
          }

          // Small delay between requests to avoid overwhelming the API
          await Future.delayed(const Duration(milliseconds: 100));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username != null ? username! : AppLocalizations.of(context)!.myGists),
        actions: [
          // Browse public gists button
          IconButton(
            icon: const Icon(Icons.public),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PublicGistsScreen(
                    cacheService: _cacheService,
                  ),
                ),
              );
            },
            tooltip: AppLocalizations.of(context)!.browsePublicGists,
          ),
          // Sync status indicator
          if (_syncQueueService.hasPendingOperations)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () => _showSyncStatusDialog(),
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _syncQueueService.conflictCount > 0
                          ? Colors.orange.withAlpha(51)
                          : Colors.blue.withAlpha(51),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_syncQueueService.isSyncing)
                          const SizedBox(
                            width: 12,
                            height: 12,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        else if (_syncQueueService.conflictCount > 0)
                          const Icon(Icons.warning_amber,
                              size: 16, color: Colors.orange)
                        else
                          const Icon(Icons.cloud_upload_outlined,
                              size: 16, color: Colors.blue),
                        const SizedBox(width: 4),
                        Text(
                          '${_syncQueueService.pendingCount}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: _syncQueueService.conflictCount > 0
                                ? Colors.orange
                                : Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          // Sort options menu
          PopupMenuButton<SortOption>(
            icon: const Icon(Icons.sort),
            tooltip: AppLocalizations.of(context)!.sortBy,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<SortOption>(
                value: SortOption.dateNewest,
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.sortDateNewest),
                    if (_organizationService.currentSortOption == SortOption.dateNewest)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.check, size: 20),
                      ),
                  ],
                ),
              ),
              PopupMenuItem<SortOption>(
                value: SortOption.dateOldest,
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.sortDateOldest),
                    if (_organizationService.currentSortOption == SortOption.dateOldest)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.check, size: 20),
                      ),
                  ],
                ),
              ),
              PopupMenuItem<SortOption>(
                value: SortOption.nameAsc,
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.sortNameAsc),
                    if (_organizationService.currentSortOption == SortOption.nameAsc)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.check, size: 20),
                      ),
                  ],
                ),
              ),
              PopupMenuItem<SortOption>(
                value: SortOption.nameDesc,
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.sortNameDesc),
                    if (_organizationService.currentSortOption == SortOption.nameDesc)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.check, size: 20),
                      ),
                  ],
                ),
              ),
              PopupMenuItem<SortOption>(
                value: SortOption.language,
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.sortLanguage),
                    if (_organizationService.currentSortOption == SortOption.language)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.check, size: 20),
                      ),
                  ],
                ),
              ),
            ],
            onSelected: (SortOption value) {
              _organizationService.setSortOption(value);
            },
          ),
          PopupMenuButton<String>(
            initialValue: AppLocalizations.of(context)!.allLanguages,
            icon: const Icon(Icons.code),
            tooltip: AppLocalizations.of(context)!.selectLanguage,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: AppLocalizations.of(context)!.allLanguages,
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.allLanguages),
                    if (selectedLanguage ==
                        AppLocalizations.of(context)!.allLanguages)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.check, size: 20),
                      ),
                  ],
                ),
              ),
              ...availableLanguages.map(
                (language) => PopupMenuItem<String>(
                  value: language,
                  child: Row(
                    children: [
                      Text(language),
                      if (selectedLanguage == language)
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.check, size: 20),
                        ),
                    ],
                  ),
                ),
              ),
            ],
            onSelected: (String value) {
              setState(() {
                selectedLanguage = value;
                _filterGists();
              });
            },
          ),
        ],
      ),
      drawer: SettingsDrawer(
        profileUrl: avatarUrl,
        username: username,
      ),
      body: Column(
        children: [
          // Offline indicator banner
          if (!_isOnline)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: Colors.orange.shade700,
              child: Row(
                children: [
                  const Icon(Icons.cloud_off, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.offlineChangesWillSync,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  if (_syncQueueService.pendingCount > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(51),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.pendingBadge(_syncQueueService.pendingCount),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ),
          // Search bar fixed at top (outside scroll view)
          GistSearchBar(
            controller: _searchController,
            onSearch: (value) => _filterGists(),
          ),
          Expanded(
            child: isLoading && isInitialLoad
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(),
                        if (gists.isEmpty) ...[
                          const SizedBox(height: 16),
                          Text(
                            AppLocalizations.of(context)!.loadingGists,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ],
                    ),
                  )
                : filteredGists.isEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _searchController.text.isEmpty
                                    ? Icons.note_add_outlined
                                    : Icons.search_off,
                                size: 64,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withValues(alpha: 0.5),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                _searchController.text.isEmpty
                                    ? AppLocalizations.of(context)!.noGistsYet
                                    : AppLocalizations.of(context)!.noMatchingGists,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _searchController.text.isEmpty
                                    ? AppLocalizations.of(context)!.createFirstGist
                                    : AppLocalizations.of(context)!.adjustSearch,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )
                    : RefreshIndicator(
                        key: _refreshIndicatorKey,
                        onRefresh: _loadUserDataAndGists,
                        child: ListView.builder(
                          controller: _scrollController,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: filteredGists.length + 1, // +1 for bottom padding
                          itemBuilder: (context, index) {
                            // Last item is bottom padding for FABs
                            if (index == filteredGists.length) {
                              return const SizedBox(height: 160);
                            }
                            final gist = filteredGists[index];
                            return GistCard(
                              key: ValueKey('${gist['id']}_$_refreshCounter'),
                              gist: gist,
                              cacheService: _cacheService,
                              syncQueueService: _syncQueueService,
                              organizationService: _organizationService,
                              searchTerm: _searchController.text,
                              onGistDeleted: () {
                                _refreshIndicatorKey.currentState?.show();
                              },
                            );
                          },
                        ),
                      ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedOpacity(
            opacity: _showScrollToTopButton ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: AnimatedScale(
              scale: _showScrollToTopButton ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Semantics(
                label: AppLocalizations.of(context)!.scrollToTop,
                button: true,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).colorScheme.primary,
                        Theme.of(context).colorScheme.tertiary,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                        blurRadius: 12,
                        spreadRadius: 0,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _showScrollToTopButton && _scrollController.hasClients
                          ? () {
                              _scrollController.animateTo(
                                0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeOut,
                              );
                            }
                          : null,
                      borderRadius: BorderRadius.circular(16),
                      child: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (_showScrollToTopButton) const SizedBox(height: 16),
          Semantics(
            label: AppLocalizations.of(context)!.createNewGist,
            button: true,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.inversePrimary.withValues(alpha: 0.3),
                    blurRadius: 12,
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GistEditScreen(
                          isNew: true,
                          cacheService: _cacheService,
                          syncQueueService: _syncQueueService,
                          onGistUpdated: _loadUserDataAndGists,
                          onGistCreated: _handleGistCreated,
                        ),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
