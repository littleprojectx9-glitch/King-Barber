import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildLargeButton(String label, VoidCallback onTap) {
  return SizedBox(
    height: 48,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      onPressed: onTap,
      child: Text(label, style: AppTextStyle.button),
    ),
  );
}
