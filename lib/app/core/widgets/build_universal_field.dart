import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildUniversalField({
  required String hintText,
  int maxLines = 1,
  required TextInputType textInputType,
  required TextEditingController controller,
}) {
  return SizedBox(
    height: 50,
    child: TextField(
      style: AppTextStyle.textPrimary,
      keyboardType: textInputType,
      maxLines: maxLines,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: AppTextStyle.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      controller: controller,
    ),
  );
}
