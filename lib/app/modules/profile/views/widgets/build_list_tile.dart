import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildListTile(
  VoidCallback onTap,
  FaIconData icon,
  String title,
  String subTitle,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: ListTile(
      onTap: onTap,
      tileColor: AppColors.surface,
      leading: FaIcon(icon, size: 18, color: AppColors.textSecondary),
      title: Text(title, style: AppTextStyle.heading3),
      subtitle: Text(subTitle, style: AppTextStyle.body),
      trailing: FaIcon(FontAwesomeIcons.chevronRight, size: 16),
    ),
  );
}
