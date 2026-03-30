import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle inversHeading2 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.surface,
  );

  static TextStyle inversHeading1 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );

  static TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle body = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static TextStyle boldBody = GoogleFonts.poppins(
    fontSize: 12,
    height: 1,
    fontWeight: FontWeight.bold,
    color: AppColors.textSecondary,
  );

  static TextStyle inversBody = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.background,
  );

  static TextStyle button = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle button2 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle button3 = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.white,
  );

  static TextStyle hintText = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textField,
  );

  static TextStyle textPrimary = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textPrimary,
  );

  static TextStyle inversTextPrimary = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.surface,
  );

  static TextStyle textButton = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static TextStyle titleSnacbar = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static TextStyle messageSnacbar = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.textPrimary,
  );

  static TextStyle disBottomNavBar = GoogleFonts.poppins(
    fontSize: 10,
    color: AppColors.textSecondary,
  );
  static TextStyle enabBottomNavBar = GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static TextStyle supportText = GoogleFonts.poppins(
    fontSize: 10,
    color: AppColors.textSecondary,
  );

  static TextStyle openText = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.success,
  );

  static TextStyle closeText = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.error,
  );
}
