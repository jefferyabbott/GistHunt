import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF000000), // True black background
    primary: Color(0xFF0A84FF), // iOS blue (dark mode)
    secondary: Color(0xFF1C1C1E), // Dark gray
    tertiary: Color(0xFF5E5CE6), // iOS purple (dark mode)
    inversePrimary: Color(0xFF32D74B), // iOS green (dark mode)
    surfaceContainerHighest: Color(0xFF1C1C1E), // Card background
    onSurface: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
  ),
  scaffoldBackgroundColor: const Color(0xFF000000),
  cardTheme: const CardThemeData(
    elevation: 0,
    color: Color(0xFF1C1C1E),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color(0xFF000000),
    scrolledUnderElevation: 0,
  ),
);
