import 'package:flutter/material.dart';

Widget buildAnotherButtonLogin(VoidCallback onTap, String image) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      height: 55,
      width: 55,
      child: Material(
        color: Colors.white,
        shape: CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
      ),
    ),
  );
}
