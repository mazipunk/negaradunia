import 'package:flutter/material.dart';

class AppTheme {
  static const Color darkGreen = Color(0xFF0D3B26); // warna latar utama
  static const Color oliveBrown = Color(0xFF8A7F3F); // warna header & kontainer
  static const Color cardDark = Color(0xFF4A3D36); // untuk box bendera
  static const Color buttonBlue = Color(0xFF2E2EFF); // tombol pencarian
  static const Color textLight = Colors.white;

  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: darkGreen,
      appBarTheme: AppBarTheme(
        backgroundColor: oliveBrown,
        titleTextStyle: TextStyle(
          color: textLight,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: IconThemeData(color: textLight),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(color: textLight, fontSize: 22),
        bodyMedium: TextStyle(color: textLight, fontSize: 16),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: oliveBrown,
        hintStyle: TextStyle(color: textLight.withOpacity(0.6)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
