import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final esquemaDeCores = ColorScheme.fromSeed(
        seedColor: Colors.cyan,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: esquemaDeCores,

      appBarTheme: AppBarTheme(
        backgroundColor: esquemaDeCores.primary,
        foregroundColor: esquemaDeCores.onPrimary,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: esquemaDeCores.primary,
          foregroundColor: esquemaDeCores.onPrimary,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),

      cardTheme: CardThemeData(
        elevation: 2,
        margin: EdgeInsets.symmetric(vertical: 6)
      ),

      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    final esquemaDeCores = ColorScheme.fromSeed(
      seedColor: Colors.cyan,
      brightness: Brightness.dark,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: esquemaDeCores,

      appBarTheme: AppBarTheme(
        backgroundColor: esquemaDeCores.primary,
        foregroundColor: esquemaDeCores.onPrimary,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: esquemaDeCores.primary,
          foregroundColor: esquemaDeCores.onPrimary,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),

      cardTheme: CardThemeData(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 6)
      ),

      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}