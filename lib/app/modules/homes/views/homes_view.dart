import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/listview/build_list_barberman.dart';
import 'package:king_barber/app/domain/models/category.dart';
import 'package:king_barber/app/modules/homes/views/layouts/build_list_barbershop.dart';
import 'package:king_barber/app/modules/homes/views/layouts/build_sliver_heading.dart';
import 'package:king_barber/app/modules/homes/views/widgets/build_title_list.dart';
import 'package:king_barber/app/routes/app_pages.dart';

import '../controllers/homes_controller.dart';

class HomesView extends GetView<HomesController> {
  const HomesView({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverHeading(controller.searchController),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 12),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitleList('Category', () => Get.toNamed(Routes.SEE_ALL)),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Category.category.length,
                    itemBuilder: (context, index) {
                      final String category = Category.category[index];
                      return Obx(
                        () => InkWell(
                          onTap: () => controller.category.value = category,
                          child: Container(
                            height: 20,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: category == controller.category.value
                                  ? AppColors.primary
                                  : AppColors.surface,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                category,
                                style: category == controller.category.value
                                    ? AppTextStyle.inversTextPrimary
                                    : AppTextStyle.textPrimary,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Obx(
                  () => buildTitleList(
                    controller.category.value,
                    () => Get.toNamed(Routes.SEE_ALL),
                  ),
                ),
                buildListBarbershop(
                  () => Get.toNamed(Routes.DETAIL_BARBERSHOP),
                ),
                const SizedBox(height: 24),
                buildTitleList('Barberman', () => Get.toNamed(Routes.SEE_ALL)),
                buildListBarberman(() => Get.toNamed(Routes.DETAIL_BARBERMAN)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
