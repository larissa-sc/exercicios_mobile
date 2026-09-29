import 'package:flutter/material.dart';

class Tema {
  static ThemeData get lightTheme {
    final esquemaDeCores = ColorScheme.fromSeed(
      seedColor: Colors.cyan,
    );

    return ThemeData(
      useMaterial3: true,

      colorScheme: esquemaDeCores,

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
        titleLarge: TextStyle(
          color: Colors.black54,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: TextStyle(
          color: Colors.black45,
          fontSize: 16,
        ),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: esquemaDeCores.primary,
        foregroundColor: esquemaDeCores.onPrimary,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 24,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: esquemaDeCores.primary,
          foregroundColor: Colors.black,
        ),
      )
    );
  }
}