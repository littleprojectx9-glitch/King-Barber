import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle body = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.textSecondary,
  );

  static TextStyle button = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
