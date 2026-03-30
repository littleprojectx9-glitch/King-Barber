import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/build_star.dart';

Widget buildBarbershop({
  required VoidCallback onTap,
  height = 180.0,
  width = 260.0,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset(
              'assets/images/barbershop.jpg',
              fit: BoxFit.cover,
              cacheHeight: 360,
              cacheWidth: 520,
              filterQuality: FilterQuality.medium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildStar(),
                Text('Bengkong Laut', style: AppTextStyle.inversHeading1),
                Text(
                  'Jl. Sm Raja, Bengkong Laut, Kota Batam',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.inversBody,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
