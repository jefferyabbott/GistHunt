import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class GistSocialService {
  static final GistSocialService _instance = GistSocialService._internal();
  factory GistSocialService() => _instance;
  GistSocialService._internal();

  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  static const String _starredCacheKey = 'starred_gists_cache';

  // Cache for starred status to reduce API calls
  final Map<String, bool> _starredCache = {};
  Future<bool>? _starredListLoad;

  Future<String?> _getToken() async {
    return await _storage.read(key: 'github_token');
  }

  Map<String, String> _getHeaders(String token) {
    return {
      'Authorization': 'Bearer $token',
      'Accept': 'application/vnd.github.v3+json',
    };
  }

  /// Check if a gist is starred by the current user
  Future<bool> isGistStarred(String gistId) async {
    if (await _loadStarredList()) {
      return _starredCache[gistId] ?? false;
    }
    if (_starredCache.containsKey(gistId)) {
      return _starredCache[gistId]!;
    }

    try {
      final token = await _getToken();
      if (token == null) return false;

      final response = await http.get(
        Uri.parse('https://api.github.com/gists/$gistId/star'),
        headers: _getHeaders(token),
      );

      final isStarred = response.statusCode == 204;
      _starredCache[gistId] = isStarred;
      await _persistStarredCache();
      return isStarred;
    } catch (e) {
      debugPrint('Error checking starred status: $e');
      return false;
    }
  }

  /// Star a gist
  Future<bool> starGist(String gistId) async {
    try {
      final token = await _getToken();
      if (token == null) return false;

      final response = await http.put(
        Uri.parse('https://api.github.com/gists/$gistId/star'),
        headers: {
          ..._getHeaders(token),
          'Content-Length': '0',
        },
      );

      if (response.statusCode == 204) {
        _starredCache[gistId] = true;
        await _persistStarredCache();
        return true;
      }
      return false;
    } catch (e) {
      debugPrint('Error starring gist: $e');
      return false;
    }
  }

  /// Unstar a gist
  Future<bool> unstarGist(String gistId) async {
    try {
      final token = await _getToken();
      if (token == null) return false;

      final response = await http.delete(
        Uri.parse('https://api.github.com/gists/$gistId/star'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 204) {
        _starredCache[gistId] = false;
        await _persistStarredCache();
        return true;
      }
      return false;
    } catch (e) {
      debugPrint('Error unstarring gist: $e');
      return false;
    }
  }

  /// Fork a gist
  Future<Map<String, dynamic>?> forkGist(String gistId) async {
    try {
      final token = await _getToken();
      if (token == null) return null;

      final response = await http.post(
        Uri.parse('https://api.github.com/gists/$gistId/forks'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 201) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugPrint('Error forking gist: $e');
      return null;
    }
  }

  /// Get public gists with pagination
  Future<List<Map<String, dynamic>>> getPublicGists({
    int page = 1,
    int perPage = 30,
  }) async {
    try {
      final token = await _getToken();
      if (token == null) return [];

      final response = await http.get(
        Uri.parse(
            'https://api.github.com/gists/public?page=$page&per_page=$perPage'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 200) {
        final List<dynamic> gists = jsonDecode(response.body);
        return gists.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      debugPrint('Error fetching public gists: $e');
      return [];
    }
  }

  /// Loads the IDs of every gist the user has starred into the cache, so
  /// [isGistStarred] can answer locally instead of making one request per
  /// gist. Returns false if the list couldn't be fetched.
  Future<bool> _loadStarredList() {
    return _starredListLoad ??= () async {
      try {
        final token = await _getToken();
        if (token == null) return false;

        final starredIds = <String>{};
        for (var page = 1;; page++) {
          final response = await http.get(
            Uri.parse(
                'https://api.github.com/gists/starred?page=$page&per_page=100'),
            headers: _getHeaders(token),
          );
          if (response.statusCode != 200) return false;

          final List<dynamic> gists = jsonDecode(response.body);
          for (var gist in gists) {
            final gistId = gist['id'] as String?;
            if (gistId != null) starredIds.add(gistId);
          }
          if (gists.length < 100) break;
        }

        _starredCache.updateAll((gistId, _) => starredIds.contains(gistId));
        for (final gistId in starredIds) {
          _starredCache[gistId] = true;
        }
        await _persistStarredCache();
        return true;
      } catch (e) {
        debugPrint('Error fetching starred gists: $e');
        return false;
      }
    }().then((loaded) {
      // Allow a later retry if this attempt failed.
      if (!loaded) _starredListLoad = null;
      return loaded;
    });
  }

  /// Search gists by username (get all gists from a specific user)
  Future<List<Map<String, dynamic>>> getUserGists(String username) async {
    try {
      final token = await _getToken();
      if (token == null) return [];

      final response = await http.get(
        Uri.parse('https://api.github.com/users/$username/gists?per_page=100'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 200) {
        final List<dynamic> gists = jsonDecode(response.body);
        return gists.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      debugPrint('Error fetching user gists: $e');
      return [];
    }
  }

  /// Get user profile details
  Future<Map<String, dynamic>?> getUserProfile(String username) async {
    try {
      final token = await _getToken();
      if (token == null) return null;

      final response = await http.get(
        Uri.parse('https://api.github.com/users/$username'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugPrint('Error fetching user profile: $e');
      return null;
    }
  }

  /// Get user's followers
  Future<List<Map<String, dynamic>>> getUserFollowers(String username) async {
    try {
      final token = await _getToken();
      if (token == null) return [];

      final response = await http.get(
        Uri.parse('https://api.github.com/users/$username/followers?per_page=100'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 200) {
        final List<dynamic> users = jsonDecode(response.body);
        return users.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      debugPrint('Error fetching user followers: $e');
      return [];
    }
  }

  /// Get users that user is following
  Future<List<Map<String, dynamic>>> getUserFollowing(String username) async {
    try {
      final token = await _getToken();
      if (token == null) return [];

      final response = await http.get(
        Uri.parse('https://api.github.com/users/$username/following?per_page=100'),
        headers: _getHeaders(token),
      );

      if (response.statusCode == 200) {
        final List<dynamic> users = jsonDecode(response.body);
        return users.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      debugPrint('Error fetching user following: $e');
      return [];
    }
  }

  /// Persist starred cache to SharedPreferences
  Future<void> _persistStarredCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_starredCacheKey, jsonEncode(_starredCache));
    } catch (e) {
      debugPrint('Error persisting starred cache: $e');
    }
  }

  /// Load starred cache from SharedPreferences
  Future<void> loadStarredCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cacheJson = prefs.getString(_starredCacheKey);
      if (cacheJson != null) {
        final Map<String, dynamic> decoded = jsonDecode(cacheJson);
        _starredCache.clear();
        decoded.forEach((key, value) {
          _starredCache[key] = value as bool;
        });
      }
    } catch (e) {
      debugPrint('Error loading starred cache: $e');
    }
  }

  /// Clear starred cache (useful for logout)
  Future<void> clearCache() async {
    _starredCache.clear();
    _starredListLoad = null;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_starredCacheKey);
    } catch (e) {
      debugPrint('Error clearing starred cache: $e');
    }
  }

  /// Get cached starred status without API call
  bool? getCachedStarredStatus(String gistId) {
    return _starredCache[gistId];
  }
}
