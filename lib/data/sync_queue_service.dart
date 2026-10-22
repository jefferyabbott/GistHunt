import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'sync_models.dart';
import 'connectivity_service.dart';

class SyncQueueService extends ChangeNotifier {
  static final SyncQueueService _instance = SyncQueueService._internal();
  factory SyncQueueService() => _instance;
  SyncQueueService._internal();

  static const String _queueKey = 'sync_queue';
  static const String _gistListCacheKey = 'cached_gist_list';
  static const String _gistListTimestampKey = 'cached_gist_list_timestamp';
  static const int _maxRetries = 5;

  final List<SyncOperation> _queue = [];
  final ConnectivityService _connectivity = ConnectivityService();
  final Uuid _uuid = const Uuid();

  List<SyncOperation> get queue => List.unmodifiable(_queue);
  int get pendingCount => _queue.where((op) => op.status == SyncStatus.pending).length;
  int get failedCount => _queue.where((op) => op.status == SyncStatus.failed).length;
  int get conflictCount => _queue.where((op) => op.status == SyncStatus.conflict).length;
  bool get hasPendingOperations => _queue.isNotEmpty;

  bool _isSyncing = false;
  bool get isSyncing => _isSyncing;

  String? _authToken;
  StreamSubscription<bool>? _connectivitySubscription;

  Future<void> initialize(String authToken) async {
    _authToken = authToken;
    await _loadQueue();

    // Listen for connectivity changes and auto-sync
    _connectivitySubscription = _connectivity.connectionStream.listen((isConnected) {
      if (isConnected && hasPendingOperations && !_isSyncing) {
        syncPendingOperations();
      }
    });
  }

  Future<void> _loadQueue() async {
    final prefs = await SharedPreferences.getInstance();
    final queueJson = prefs.getString(_queueKey);

    if (queueJson != null) {
      try {
        final List<dynamic> decoded = jsonDecode(queueJson);
        _queue.clear();
        for (var item in decoded) {
          final operation = SyncOperation.fromJson(item as Map<String, dynamic>);
          // An operation left in `syncing` was interrupted (e.g. the app quit
          // mid-request), so it needs to be attempted again.
          _queue.add(operation.status == SyncStatus.syncing
              ? operation.copyWith(status: SyncStatus.pending)
              : operation);
        }
        notifyListeners();
      } catch (e) {
        debugPrint('Error loading sync queue: $e');
      }
    }
  }

  Future<void> _saveQueue() async {
    final prefs = await SharedPreferences.getInstance();
    final queueJson = jsonEncode(_queue.map((op) => op.toJson()).toList());
    await prefs.setString(_queueKey, queueJson);
  }

  String generateTempId() => 'temp_${_uuid.v4()}';

  Future<void> addOperation(SyncOperation operation) async {
    final existingIndex = _queue.indexWhere((op) => op.gistId == operation.gistId);

    if (existingIndex != -1) {
      // Replace the existing operation (latest changes win)
      _queue[existingIndex] = operation;
    } else {
      _queue.add(operation);
    }

    await _saveQueue();
    notifyListeners();

    // Try to sync immediately if online
    if (_connectivity.isConnected && !_isSyncing) {
      syncPendingOperations();
    }
  }

  Future<void> removeOperation(String operationId) async {
    _queue.removeWhere((op) => op.id == operationId);
    await _saveQueue();
    notifyListeners();
  }

  /// Syncs queued operations. Failed operations are retried automatically up
  /// to [_maxRetries] times; pass [retryAllFailed] (e.g. for a manual "Sync
  /// Now") to retry them regardless.
  Future<void> syncPendingOperations({bool retryAllFailed = false}) async {
    if (_isSyncing || !_connectivity.isConnected || _authToken == null) {
      return;
    }

    _isSyncing = true;
    notifyListeners();

    try {
      final pendingOps = _queue
          .where((op) =>
              _shouldAttempt(op) ||
              (retryAllFailed && op.status == SyncStatus.failed))
          .toList();

      for (var operation in pendingOps) {
        await _syncOperation(operation);
      }
    } finally {
      _isSyncing = false;
      notifyListeners();
    }
  }

  bool _shouldAttempt(SyncOperation operation) {
    return operation.status == SyncStatus.pending ||
        (operation.status == SyncStatus.failed &&
            operation.retryCount < _maxRetries);
  }

  Future<void> _syncOperation(SyncOperation operation) async {
    final index = _queue.indexWhere((op) => op.id == operation.id);
    if (index == -1) return;

    _queue[index] = operation.copyWith(
      status: SyncStatus.syncing,
      lastAttempt: DateTime.now(),
    );
    await _saveQueue();
    notifyListeners();

    try {
      switch (operation.type) {
        case SyncOperationType.create:
          await _syncCreate(operation);
          break;
        case SyncOperationType.update:
          await _syncUpdate(operation);
          break;
        case SyncOperationType.delete:
          await _syncDelete(operation);
          break;
      }
    } catch (e) {
      // Look the operation up again: the queue may have changed while syncing.
      final currentIndex = _queue.indexWhere((op) => op.id == operation.id);
      if (currentIndex == -1) return;
      final currentOp = _queue[currentIndex];
      _queue[currentIndex] = currentOp.copyWith(
        status: SyncStatus.failed,
        errorMessage: e.toString(),
        retryCount: currentOp.retryCount + 1,
      );
      await _saveQueue();
      notifyListeners();
    }
  }

  Future<void> _syncCreate(SyncOperation operation) async {
    final response = await http.post(
      Uri.parse('https://api.github.com/gists'),
      headers: {
        'Authorization': 'Bearer $_authToken',
        'Accept': 'application/vnd.github.v3+json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(operation.data),
    );

    if (response.statusCode == 201) {
      await removeOperation(operation.id);

      // Swap the temporary gist for the server-created one, which has the real ID.
      final newGist = jsonDecode(response.body) as Map<String, dynamic>;
      await _updateCachedGistList((gists) {
        gists.removeWhere((g) => g['id'] == operation.gistId);
        gists.insert(0, newGist);
        return gists;
      });
    } else {
      throw Exception('Failed to create gist: ${response.statusCode}');
    }
  }

  Future<void> _syncUpdate(SyncOperation operation) async {
    final remoteGist = await _fetchRemoteGist(operation.gistId);

    if (remoteGist != null) {
      final remoteUpdatedAt = DateTime.parse(remoteGist['updated_at'] as String);
      final localTimestamp = operation.createdAt;

      // If remote was updated after our local change was made, we have a conflict
      if (remoteUpdatedAt.isAfter(localTimestamp)) {
        final index = _queue.indexWhere((op) => op.id == operation.id);
        if (index != -1) {
          _queue[index] = operation.copyWith(
            status: SyncStatus.conflict,
            conflictRemoteVersion: jsonEncode(remoteGist),
          );
          await _saveQueue();
          notifyListeners();
        }
        return;
      }
    }

    final response = await http.patch(
      Uri.parse('https://api.github.com/gists/${operation.gistId}'),
      headers: {
        'Authorization': 'Bearer $_authToken',
        'Accept': 'application/vnd.github.v3+json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(operation.data),
    );

    if (response.statusCode == 200) {
      await removeOperation(operation.id);

      final updatedGist = jsonDecode(response.body) as Map<String, dynamic>;
      await _updateCachedGistList((gists) {
        final gistIndex = gists.indexWhere((g) => g['id'] == operation.gistId);
        if (gistIndex != -1) {
          gists[gistIndex] = updatedGist;
        }
        return gists;
      });
    } else {
      throw Exception('Failed to update gist: ${response.statusCode}');
    }
  }

  Future<void> _syncDelete(SyncOperation operation) async {
    final response = await http.delete(
      Uri.parse('https://api.github.com/gists/${operation.gistId}'),
      headers: {
        'Authorization': 'Bearer $_authToken',
        'Accept': 'application/vnd.github.v3+json',
      },
    );

    if (response.statusCode == 204) {
      await removeOperation(operation.id);

      await _updateCachedGistList((gists) {
        gists.removeWhere((g) => g['id'] == operation.gistId);
        return gists;
      });
    } else {
      throw Exception('Failed to delete gist: ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>?> _fetchRemoteGist(String gistId) async {
    try {
      final response = await http.get(
        Uri.parse('https://api.github.com/gists/$gistId'),
        headers: {
          'Authorization': 'Bearer $_authToken',
          'Accept': 'application/vnd.github.v3+json',
        },
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      }
    } catch (e) {
      debugPrint('Error fetching remote gist: $e');
    }
    return null;
  }

  // Conflict resolution methods
  Future<void> resolveConflictKeepLocal(String operationId) async {
    final index = _queue.indexWhere((op) => op.id == operationId);
    if (index == -1) return;

    // Bumping createdAt makes the local change newer than the remote, so the
    // next sync overwrites it instead of flagging a conflict again.
    final operation = _queue[index].copyWith(
      status: SyncStatus.pending,
      retryCount: 0,
      createdAt: DateTime.now(),
      clearErrorMessage: true,
      clearConflictRemoteVersion: true,
    );
    _queue[index] = operation;
    await _saveQueue();
    notifyListeners();

    if (_connectivity.isConnected && !_isSyncing) {
      syncPendingOperations();
    }
  }

  Future<void> resolveConflictKeepRemote(String operationId) async {
    final index = _queue.indexWhere((op) => op.id == operationId);
    if (index == -1) return;

    final operation = _queue[index];
    if (operation.conflictRemoteVersion != null) {
      final remoteGist =
          jsonDecode(operation.conflictRemoteVersion!) as Map<String, dynamic>;

      await _updateCachedGistList((gists) {
        final gistIndex = gists.indexWhere((g) => g['id'] == operation.gistId);
        if (gistIndex != -1) {
          gists[gistIndex] = remoteGist;
        }
        return gists;
      });
    }

    await removeOperation(operationId);
  }

  Future<void> resolveConflictWithMerged(
      String operationId, Map<String, dynamic> mergedData) async {
    final index = _queue.indexWhere((op) => op.id == operationId);
    if (index == -1) return;

    final operation = _queue[index].copyWith(
      data: mergedData,
      status: SyncStatus.pending,
      retryCount: 0,
      createdAt: DateTime.now(),
      clearErrorMessage: true,
      clearConflictRemoteVersion: true,
    );
    _queue[index] = operation;
    await _saveQueue();
    notifyListeners();

    if (_connectivity.isConnected && !_isSyncing) {
      syncPendingOperations();
    }
  }

  // Cached gist list management
  Future<List<Map<String, dynamic>>> getCachedGistList() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedJson = prefs.getString(_gistListCacheKey);

    if (cachedJson != null) {
      try {
        final List<dynamic> decoded = jsonDecode(cachedJson);
        return decoded.cast<Map<String, dynamic>>();
      } catch (e) {
        debugPrint('Error loading cached gist list: $e');
      }
    }
    return [];
  }

  Future<void> setCachedGistList(List<Map<String, dynamic>> gists) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_gistListCacheKey, jsonEncode(gists));
    await prefs.setString(
        _gistListTimestampKey, DateTime.now().toIso8601String());
  }

  Future<void> _updateCachedGistList(
      List<Map<String, dynamic>> Function(List<Map<String, dynamic>>) updater) async {
    final gists = await getCachedGistList();
    final updatedGists = updater(gists);
    await setCachedGistList(updatedGists);
  }

  Future<DateTime?> getCachedGistListTimestamp() async {
    final prefs = await SharedPreferences.getInstance();
    final timestamp = prefs.getString(_gistListTimestampKey);
    if (timestamp != null) {
      return DateTime.parse(timestamp);
    }
    return null;
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    super.dispose();
  }
}
