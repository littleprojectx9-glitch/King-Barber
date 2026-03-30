import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildLikeText(String like) {
  return Row(
    children: [
      FaIcon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 14),
      const SizedBox(width: 4),
      Text(like, style: AppTextStyle.body),
    ],
  );
}
