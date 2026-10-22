import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExportSettingsService extends ChangeNotifier {
  static final ExportSettingsService _instance = ExportSettingsService._internal();
  factory ExportSettingsService() => _instance;
  ExportSettingsService._internal();

  static const String _revealInFinderKey = 'export_reveal_in_finder';

  bool _revealInFinder = true; // Default to enabled

  bool get revealInFinder => _revealInFinder;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _revealInFinder = prefs.getBool(_revealInFinderKey) ?? true;
    notifyListeners();
  }

  Future<void> setRevealInFinder(bool value) async {
    if (_revealInFinder != value) {
      _revealInFinder = value;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_revealInFinderKey, value);
      notifyListeners();
    }
  }
}
