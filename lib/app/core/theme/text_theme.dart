import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 13,
    color: AppColors.textSecondary,
  );

  static TextStyle body = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static TextStyle button = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle button2 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static TextStyle hintText = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textField,
  );

  static TextStyle textPrimary = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textPrimary,
  );

  static TextStyle textButton = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
}
