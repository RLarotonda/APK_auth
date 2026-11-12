import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const bg = Color.fromARGB(255, 11, 18, 32);
  static const card = Color.fromARGB(255, 19, 28, 45);
  static const accent = Color.fromARGB(255, 108, 99, 255);

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bg,
    colorScheme: const ColorScheme.dark(
      primary: accent,
      surface: card,
      secondary: Color.fromARGB(255, 72, 140, 250),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: bg,
      foregroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: card,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
    ),
    useMaterial3: true,
  );
}
