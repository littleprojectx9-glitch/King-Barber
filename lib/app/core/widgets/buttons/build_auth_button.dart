import 'package:flutter/material.dart';

Widget buildAuthButton(Widget label, VoidCallback onTap) {
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
      child: label,
    ),
  );
}
