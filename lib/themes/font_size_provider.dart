import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FontSizeProvider extends ChangeNotifier {
  static const String _fontSizeKey = 'code_font_size';
  static const double _defaultFontSize = 14.0;
  static const double _minFontSize = 10.0;
  static const double _maxFontSize = 24.0;

  double _fontSize;
  final SharedPreferences _prefs;

  FontSizeProvider(this._prefs)
      : _fontSize = _prefs.getDouble(_fontSizeKey) ?? _defaultFontSize;

  double get fontSize => _fontSize;
  double get minFontSize => _minFontSize;
  double get maxFontSize => _maxFontSize;

  Future<void> setFontSize(double size) async {
    if (size >= _minFontSize && size <= _maxFontSize) {
      _fontSize = size;
      await _prefs.setDouble(_fontSizeKey, size);
      notifyListeners();
    }
  }
}
