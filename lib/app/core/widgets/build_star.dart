import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildStar({double size = 12}) {
  return Row(
    children: [
      FaIcon(FontAwesomeIcons.solidStar, size: size, color: Colors.amber),
      FaIcon(FontAwesomeIcons.solidStar, size: size, color: Colors.amber),
      FaIcon(FontAwesomeIcons.solidStar, size: size, color: Colors.amber),
      FaIcon(FontAwesomeIcons.solidStar, size: size, color: Colors.amber),
      FaIcon(FontAwesomeIcons.solidStar, size: size, color: Colors.amber),
    ],
  );
}
