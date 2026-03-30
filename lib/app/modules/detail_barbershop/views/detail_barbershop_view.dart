import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/build_like_text.dart';
import 'package:king_barber/app/core/widgets/buttons/button_floating_widget.dart';
import 'package:king_barber/app/core/widgets/listview/build_list_barberman.dart';
import 'package:king_barber/app/core/widgets/build_star.dart';
import './widgets/build_button_direction.dart';
import './widgets/build_category_label.dart';
import './widgets/build_grid_service.dart';
import './widgets/build_open_close.dart';
import './widgets/popup_rating.dart';
import '../controllers/detail_barbershop_controller.dart';

class DetailBarbershopView extends GetView<DetailBarbershopController> {
  const DetailBarbershopView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 360,
                  width: double.infinity,
                  child: Material(
                    color: Colors.white,
                    child: Image.asset(
                      'assets/images/barbershop.jpg',
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildOpenClose('tutup'),
                          buildLikeText('100'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Obx(
                        () => InkWell(
                          onTap: () => controller.isTitleExpan.toggle(),
                          child: Text(
                            'BENGKONG LAUT BARBERSHOP',
                            maxLines: controller.isTitleExpan.value ? 3 : 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.heading1,
                          ),
                        ),
                      ),
                      Text(
                        'Buka Pukul 10.00 - 22.00',
                        style: AppTextStyle.body,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Jl. Sm Raja Bengkong Laut, Kota Batam, Provinsi Kepulauan Riau',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.body,
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(child: buildButtonDirection(() {})),
                          const SizedBox(width: 24),
                          SizedBox(
                            height: 48,
                            width: 48,
                            child: Material(
                              shape: CircleBorder(),
                              color: Colors.white,
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.solidMessage,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      buildGridService(),
                      const SizedBox(height: 32),
                      buildCategoryLabel('BARBERMAN'),
                      buildListBarberman(() {}),
                      const SizedBox(height: 12),
                      const Divider(color: AppColors.textSecondary),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCategoryLabel('RATING'),
                          TextButton(
                            onPressed: () => showRatingPopup(),
                            child: Text(
                              'Beri rating',
                              style: AppTextStyle.textButton,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          buildStar(size: 32),
                          const SizedBox(width: 8),
                          Text('/ 102', style: AppTextStyle.body),
                        ],
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildButtonFloating(
                    () => Get.back(),
                    FaIcon(FontAwesomeIcons.chevronLeft),
                  ),
                  Obx(
                    () => buildButtonFloating(
                      () => controller.isLike.toggle(),
                      FaIcon(
                        controller.isLike.value
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        color: controller.isLike.value
                            ? Colors.red
                            : AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
