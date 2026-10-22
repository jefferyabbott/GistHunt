import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TabSizeProvider extends ChangeNotifier {
  static const String _tabSizeKey = 'tab_size';
  static const int _defaultTabSize = 4;
  static const int _minTabSize = 2;
  static const int _maxTabSize = 8;

  int _tabSize;
  final SharedPreferences _prefs;

  TabSizeProvider(this._prefs)
      : _tabSize = _prefs.getInt(_tabSizeKey) ?? _defaultTabSize;

  int get tabSize => _tabSize;
  int get minTabSize => _minTabSize;
  int get maxTabSize => _maxTabSize;

  Future<void> setTabSize(int size) async {
    if (size >= _minTabSize && size <= _maxTabSize) {
      _tabSize = size;
      await _prefs.setInt(_tabSizeKey, size);
      notifyListeners();
    }
  }
}
