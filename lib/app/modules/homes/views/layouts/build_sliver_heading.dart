import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/textfields/build_search_field.dart';

Widget buildSliverHeading(TextEditingController controller) {
  return SliverAppBar(
    expandedHeight: 170,
    collapsedHeight: 150,
    flexibleSpace: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.background,
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Haii Nanda', style: AppTextStyle.inversHeading1),
                    Text(
                      'Perawatan apa hari inii?',
                      style: AppTextStyle.inversBody,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            buildSearchField(controller),
          ],
        ),
      ),
    ),
  );
}
