import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

void showRatingPopup() {
  double rating = 0;

  Get.defaultDialog(
    title: "Beri Rating",
    titleStyle: AppTextStyle.heading1,
    content: Column(
      children: [
        Text("Seberapa puas kamu?", style: AppTextStyle.textPrimary),
        const SizedBox(height: 16),

        RatingBar.builder(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 30,
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (value) {
            rating = value;
          },
        ),
      ],
    ),
    buttonColor: AppColors.primary,
    cancelTextColor: AppColors.primary,
    textConfirm: "Kirim",
    onConfirm: () {
      print("Rating: $rating");
      Get.back();
    },
    textCancel: "Batal",
  );
}
