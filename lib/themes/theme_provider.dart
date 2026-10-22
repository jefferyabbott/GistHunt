import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dark_mode.dart';
import 'light_mode.dart';

enum AppThemeMode { light, dark, system }

/// Manages switching the app between light, dark, and system modes.
class ThemeProvider with ChangeNotifier {
  static const String _themeModeKey = 'theme_mode';
  AppThemeMode _themeMode = AppThemeMode.system;
  Brightness? _systemBrightness;

  ThemeProvider() {
    _loadThemeMode();
  }

  AppThemeMode get themeMode => _themeMode;

  /// Returns the effective theme for the current mode and system brightness.
  ThemeData getTheme(Brightness systemBrightness) {
    _systemBrightness = systemBrightness;

    switch (_themeMode) {
      case AppThemeMode.light:
        return lightMode;
      case AppThemeMode.dark:
        return darkMode;
      case AppThemeMode.system:
        return systemBrightness == Brightness.dark ? darkMode : lightMode;
    }
  }

  bool get isDarkMode {
    if (_themeMode == AppThemeMode.system) {
      return _systemBrightness == Brightness.dark;
    }
    return _themeMode == AppThemeMode.dark;
  }

  Future<void> setThemeMode(AppThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeModeKey, mode.toString());
  }

  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final savedMode = prefs.getString(_themeModeKey);

    if (savedMode != null) {
      _themeMode = AppThemeMode.values.firstWhere(
        (mode) => mode.toString() == savedMode,
        orElse: () => AppThemeMode.system,
      );
    }
    notifyListeners();
  }
}
