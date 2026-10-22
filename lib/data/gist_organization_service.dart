import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SortOption {
  dateNewest,
  dateOldest,
  nameAsc,
  nameDesc,
  language,
}

class GistOrganizationService extends ChangeNotifier {
  static final GistOrganizationService _instance = GistOrganizationService._internal();
  factory GistOrganizationService() => _instance;
  GistOrganizationService._internal();

  static const String _pinnedGistsKey = 'pinned_gists';
  static const String _archivedGistsKey = 'archived_gists';
  static const String _sortOptionKey = 'gist_sort_option';
  static const String _showArchivedKey = 'show_archived_gists';

  Set<String> _pinnedGistIds = {};
  Set<String> _archivedGistIds = {};
  SortOption _currentSortOption = SortOption.dateNewest;
  bool _showArchived = false;

  Set<String> get pinnedGistIds => Set.unmodifiable(_pinnedGistIds);
  Set<String> get archivedGistIds => Set.unmodifiable(_archivedGistIds);
  SortOption get currentSortOption => _currentSortOption;
  bool get showArchived => _showArchived;

  Future<void> initialize() async {
    await _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();

    final pinnedJson = prefs.getString(_pinnedGistsKey);
    if (pinnedJson != null) {
      try {
        final List<dynamic> decoded = jsonDecode(pinnedJson);
        _pinnedGistIds = Set<String>.from(decoded.cast<String>());
      } catch (e) {
        debugPrint('Error loading pinned gists: $e');
        _pinnedGistIds = {};
      }
    }

    final archivedJson = prefs.getString(_archivedGistsKey);
    if (archivedJson != null) {
      try {
        final List<dynamic> decoded = jsonDecode(archivedJson);
        _archivedGistIds = Set<String>.from(decoded.cast<String>());
      } catch (e) {
        debugPrint('Error loading archived gists: $e');
        _archivedGistIds = {};
      }
    }

    final sortOptionIndex = prefs.getInt(_sortOptionKey);
    if (sortOptionIndex != null && sortOptionIndex < SortOption.values.length) {
      _currentSortOption = SortOption.values[sortOptionIndex];
    }

    _showArchived = prefs.getBool(_showArchivedKey) ?? false;

    notifyListeners();
  }

  Future<void> _savePinnedGists() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_pinnedGistsKey, jsonEncode(_pinnedGistIds.toList()));
  }

  Future<void> _saveArchivedGists() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_archivedGistsKey, jsonEncode(_archivedGistIds.toList()));
  }

  Future<void> _saveSortOption() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_sortOptionKey, _currentSortOption.index);
  }

  Future<void> _saveShowArchived() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_showArchivedKey, _showArchived);
  }

  // Pin management
  bool isPinned(String gistId) => _pinnedGistIds.contains(gistId);

  Future<void> togglePin(String gistId) async {
    if (_pinnedGistIds.contains(gistId)) {
      _pinnedGistIds.remove(gistId);
    } else {
      _pinnedGistIds.add(gistId);
    }
    await _savePinnedGists();
    notifyListeners();
  }

  Future<void> pinGist(String gistId) async {
    if (!_pinnedGistIds.contains(gistId)) {
      _pinnedGistIds.add(gistId);
      await _savePinnedGists();
      notifyListeners();
    }
  }

  Future<void> unpinGist(String gistId) async {
    if (_pinnedGistIds.contains(gistId)) {
      _pinnedGistIds.remove(gistId);
      await _savePinnedGists();
      notifyListeners();
    }
  }

  // Archive management
  bool isArchived(String gistId) => _archivedGistIds.contains(gistId);

  Future<void> toggleArchive(String gistId) async {
    if (_archivedGistIds.contains(gistId)) {
      _archivedGistIds.remove(gistId);
    } else {
      _archivedGistIds.add(gistId);
      // Archived gists can't stay pinned.
      if (_pinnedGistIds.contains(gistId)) {
        _pinnedGistIds.remove(gistId);
        await _savePinnedGists();
      }
    }
    await _saveArchivedGists();
    notifyListeners();
  }

  Future<void> archiveGist(String gistId) async {
    if (!_archivedGistIds.contains(gistId)) {
      _archivedGistIds.add(gistId);
      // Archived gists can't stay pinned.
      if (_pinnedGistIds.contains(gistId)) {
        _pinnedGistIds.remove(gistId);
        await _savePinnedGists();
      }
      await _saveArchivedGists();
      notifyListeners();
    }
  }

  Future<void> unarchiveGist(String gistId) async {
    if (_archivedGistIds.contains(gistId)) {
      _archivedGistIds.remove(gistId);
      await _saveArchivedGists();
      notifyListeners();
    }
  }

  // Sort management
  Future<void> setSortOption(SortOption option) async {
    if (_currentSortOption != option) {
      _currentSortOption = option;
      await _saveSortOption();
      notifyListeners();
    }
  }

  // Show archived management
  Future<void> setShowArchived(bool show) async {
    if (_showArchived != show) {
      _showArchived = show;
      await _saveShowArchived();
      notifyListeners();
    }
  }

  Future<void> toggleShowArchived() async {
    _showArchived = !_showArchived;
    await _saveShowArchived();
    notifyListeners();
  }

  // Sorting logic
  List<dynamic> sortAndOrganizeGists(List<dynamic> gists, {bool includeArchived = false}) {
    // Filter out archived gists unless showing archived or searching
    List<dynamic> filteredGists;
    if (includeArchived || _showArchived) {
      filteredGists = List<dynamic>.from(gists);
    } else {
      filteredGists = gists.where((gist) {
        final gistId = gist['id'] as String?;
        return gistId == null || !_archivedGistIds.contains(gistId);
      }).toList();
    }

    final pinnedGists = <dynamic>[];
    final unpinnedGists = <dynamic>[];

    for (var gist in filteredGists) {
      final gistId = gist['id'] as String?;
      if (gistId != null && _pinnedGistIds.contains(gistId)) {
        pinnedGists.add(gist);
      } else {
        unpinnedGists.add(gist);
      }
    }

    _sortGistList(pinnedGists);
    _sortGistList(unpinnedGists);

    // Combine: pinned first, then unpinned
    return [...pinnedGists, ...unpinnedGists];
  }

  void _sortGistList(List<dynamic> gistList) {
    switch (_currentSortOption) {
      case SortOption.dateNewest:
        gistList.sort((a, b) {
          final dateA = DateTime.parse(a['updated_at'] as String);
          final dateB = DateTime.parse(b['updated_at'] as String);
          return dateB.compareTo(dateA);
        });
        break;
      case SortOption.dateOldest:
        gistList.sort((a, b) {
          final dateA = DateTime.parse(a['updated_at'] as String);
          final dateB = DateTime.parse(b['updated_at'] as String);
          return dateA.compareTo(dateB);
        });
        break;
      case SortOption.nameAsc:
        gistList.sort((a, b) {
          final nameA = _getGistName(a).toLowerCase();
          final nameB = _getGistName(b).toLowerCase();
          return nameA.compareTo(nameB);
        });
        break;
      case SortOption.nameDesc:
        gistList.sort((a, b) {
          final nameA = _getGistName(a).toLowerCase();
          final nameB = _getGistName(b).toLowerCase();
          return nameB.compareTo(nameA);
        });
        break;
      case SortOption.language:
        gistList.sort((a, b) {
          final langA = _getPrimaryLanguage(a).toLowerCase();
          final langB = _getPrimaryLanguage(b).toLowerCase();
          return langA.compareTo(langB);
        });
        break;
    }
  }

  String _getGistName(dynamic gist) {
    final description = gist['description'] as String?;
    if (description != null && description.isNotEmpty) {
      return description;
    }
    // Use first filename if no description
    final files = gist['files'] as Map<String, dynamic>?;
    if (files != null && files.isNotEmpty) {
      return files.keys.first;
    }
    return '';
  }

  String _getPrimaryLanguage(dynamic gist) {
    final files = gist['files'] as Map<String, dynamic>?;
    if (files != null && files.isNotEmpty) {
      for (var file in files.values) {
        final language = file['language'] as String?;
        if (language != null && language.isNotEmpty) {
          return language;
        }
      }
    }
    return 'zzz'; // Sort files without language to the end
  }
}
