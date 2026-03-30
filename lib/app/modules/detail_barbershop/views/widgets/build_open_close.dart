import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildOpenClose(String status) {
  final String label = status.toUpperCase();
  return SizedBox(
    height: 28,
    child: Material(
      borderRadius: BorderRadius.circular(4),
      color: label == 'BUKA'
          ? Colors.green.withAlpha(30)
          : Colors.red.withAlpha(30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          label,
          style: label == 'BUKA'
              ? AppTextStyle.openText
              : AppTextStyle.closeText,
        ),
      ),
    ),
  );
}
