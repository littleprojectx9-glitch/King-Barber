import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/build_star.dart';
import 'package:king_barber/app/routes/app_pages.dart';
import '../controllers/detail_barberman_controller.dart';

class DetailBarbermanView extends GetView<DetailBarbermanController> {
  const DetailBarbermanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: FaIcon(
            FontAwesomeIcons.chevronLeft,
            size: 18,
            color: AppColors.surface,
          ),
        ),
        title: Text('BARBERMAN', style: AppTextStyle.inversHeading2),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () => controller.isLike.toggle(),
              icon: FaIcon(
                controller.isLike.value
                    ? FontAwesomeIcons.solidHeart
                    : FontAwesomeIcons.heart,
                size: 26,
                color: controller.isLike.value ? Colors.red : AppColors.surface,
              ),
            ),
          ),
          const SizedBox(width: 24),
        ],
        backgroundColor: AppColors.primary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 64,
                      backgroundImage: AssetImage(
                        'assets/images/barberman.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Nanda Kharistian Gulo',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.heading1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: AppColors.textSecondary,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Text('120', style: AppTextStyle.body),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text('BARBERSHOP', style: AppTextStyle.heading2),
                  ),
                  buildBarbershopSecond(
                    () => Get.toNamed(Routes.DETAIL_BARBERSHOP),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildBarbershopSecond(VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.asset(
                'assets/images/barbershop.jpg',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.medium,
              ),
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
