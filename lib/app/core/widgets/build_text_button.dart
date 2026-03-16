import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildTextButton(String text, VoidCallback onTap) {
  return Align(
    alignment: AlignmentGeometry.bottomRight,
    child: TextButton(
      onPressed: onTap,
      child: Text(text, style: AppTextStyle.textButton),
    ),
  );
}
