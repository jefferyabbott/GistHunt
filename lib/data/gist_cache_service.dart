import 'package:shared_preferences/shared_preferences.dart';

class GistCacheService {
  static const String _cachePrefix = 'gist_content_';
  static const String _cacheTimestampPrefix = 'gist_timestamp_';
  static const Duration _cacheExpiration = Duration(days: 1);

  final SharedPreferences _prefs;

  GistCacheService(this._prefs);

  static Future<GistCacheService> create() async {
    final prefs = await SharedPreferences.getInstance();
    return GistCacheService(prefs);
  }

  Future<String?> getContent(String gistId) async {
    final timestampKey = _cacheTimestampPrefix + gistId;
    final contentKey = _cachePrefix + gistId;

    final timestamp = _prefs.getInt(timestampKey);
    if (timestamp == null) return null;

    final cachedTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    if (DateTime.now().difference(cachedTime) > _cacheExpiration) {
      await _prefs.remove(timestampKey);
      await _prefs.remove(contentKey);
      return null;
    }

    return _prefs.getString(contentKey);
  }

  Future<void> setContent(String gistId, String content) async {
    await _prefs.setString(_cachePrefix + gistId, content);
    await _prefs.setInt(
      _cacheTimestampPrefix + gistId,
      DateTime.now().millisecondsSinceEpoch,
    );
  }

  Future<void> clearContent(String gistId) async {
    await _prefs.remove(_cachePrefix + gistId);
    await _prefs.remove(_cacheTimestampPrefix + gistId);
  }

  /// Check if cache is stale compared to gist's updated_at time
  Future<bool> isCacheStale(String cacheKey, DateTime gistUpdatedAt) async {
    final timestampKey = _cacheTimestampPrefix + cacheKey;
    final timestamp = _prefs.getInt(timestampKey);
    if (timestamp == null) return true;

    final cachedTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    // Cache is stale if the gist was updated after we cached it
    return gistUpdatedAt.isAfter(cachedTime);
  }
}
