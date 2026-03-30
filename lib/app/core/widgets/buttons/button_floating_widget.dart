import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildButtonFloating(VoidCallback onTap, FaIcon icon) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      height: 40,
      width: 40,
      child: Material(
        shape: CircleBorder(),
        color: Colors.white.withValues(alpha: 0.8),
        child: Center(child: icon),
      ),
    ),
  );
}
