import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: Colors.white,
      secondary: AppColors.primaryLight,
      onSecondary: Colors.white,
      error: AppColors.error,
      onError: Colors.white,

      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
    ),

    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      titleTextStyle: GoogleFonts.poppins(fontSize: 20),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.border),
      ),
    ),
  );
}
