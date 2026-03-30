import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/build_like_text.dart';

Widget buildListBarberman(VoidCallback onTap) {
  return SizedBox(
    height: 240,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: onTap,
          child: Container(
            height: 140,
            width: 140,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(9),
                    child: Image.asset(
                      'assets/images/barberman.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Mr NANDA KHARISTIAN',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.heading3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BENGKONG LAUT',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.body,
                          ),
                          buildLikeText('240'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 27,
                      width: 27,
                      child: Material(
                        shape: CircleBorder(),
                        color: AppColors.primary,
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 12,
                            color: AppColors.surface,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        );
      },
    ),
  );
}
