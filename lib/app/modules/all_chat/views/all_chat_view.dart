import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/routes/app_pages.dart';
import '../controllers/all_chat_controller.dart';

class AllChatView extends GetView<AllChatController> {
  const AllChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Get.toNamed(Routes.CHAT),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/images/barberman.jpg'),
              radius: 32,
            ),
            title: Text(
              'Barbershop Bengkong',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.heading3,
            ),
            subtitle: Text(
              'Selamat siang, apakah hari ini buka ??',
              style: AppTextStyle.body,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              children: [
                Text('10.00', style: AppTextStyle.textPrimary),
                const SizedBox(height: 4),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Material(
                    color: AppColors.primary,
                    shape: CircleBorder(),
                    child: Center(
                      child: Text('123', style: AppTextStyle.inversBody),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
