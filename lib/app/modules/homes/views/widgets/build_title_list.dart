import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildTitleList(String label, VoidCallback onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(label, style: AppTextStyle.heading2),
      TextButton(
        onPressed: onTap,
        child: Text('semua', style: AppTextStyle.body),
      ),
    ],
  );
}
