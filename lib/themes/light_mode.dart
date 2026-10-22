import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    surface: Color(0xFFF5F5F7), // Light gray-white background
    primary: Color(0xFF007AFF), // iOS blue
    secondary: Color(0xFFE5E5EA), // Light gray
    tertiary: Color(0xFF5856D6), // iOS purple
    inversePrimary: Color(0xFF30D158), // iOS green
    surfaceContainerHighest: Color(0xFFFFFFFF), // Card background
    onSurface: Color(0xFF000000),
    onPrimary: Color(0xFFFFFFFF),
  ),
  scaffoldBackgroundColor: const Color(0xFFF5F5F7),
  cardTheme: const CardThemeData(
    elevation: 0,
    color: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color(0xFFF5F5F7),
    scrolledUnderElevation: 0,
  ),
);
