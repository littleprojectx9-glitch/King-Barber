import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildCategoryLabel(String label) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(label, style: AppTextStyle.heading2),
  );
}
