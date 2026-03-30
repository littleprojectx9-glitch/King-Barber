import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildButtonDirection(VoidCallback onTap) {
  return SizedBox(
    height: 48,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onTap,
      child: Row(
        children: [
          Text('Dapatkan arah', style: AppTextStyle.button3),
          const Spacer(),
          FaIcon(FontAwesomeIcons.chevronRight, size: 12),
        ],
      ),
    ),
  );
}
