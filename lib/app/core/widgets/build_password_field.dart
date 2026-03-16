import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildPasswordField({
  required String hintText,
  required VoidCallback eyeTap,
  required bool isObs,
  int maxLines = 1,
  required FaIconData icon,
  required TextEditingController controller,
}) {
  return SizedBox(
    height: 50,
    child: TextField(
      style: AppTextStyle.textPrimary,
      keyboardType: TextInputType.text,
      maxLines: maxLines,
      obscureText: isObs,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: eyeTap,
          icon: FaIcon(icon, size: 18, color: AppColors.textPrimary),
        ),
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: AppTextStyle.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      controller: controller,
    ),
  );
}
