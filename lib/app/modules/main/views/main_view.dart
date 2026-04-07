import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/modules/album/views/album_view.dart';
import 'package:king_barber/app/modules/all_chat/views/all_chat_view.dart';
import 'package:king_barber/app/modules/homes/views/homes_view.dart';
import 'package:king_barber/app/modules/main/views/widgets/icon_nav_bar.dart';
import 'package:king_barber/app/modules/profile/views/profile_view.dart';

import '../controllers/main_controller.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();

    final pages = [HomesView(), AllChatView(), AlbumView(), ProfileView()];
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndext.value,
          children: pages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.textSecondary,
          selectedLabelStyle: AppTextStyle.enabBottomNavBar,
          showUnselectedLabels: false,
          currentIndex: controller.currentIndext.value,
          onTap: (value) {
            controller.currentIndext.value = value;
          },
          items: [
            iconNavBar(FontAwesomeIcons.solidHouse, 'HOME'),
            iconNavBar(FontAwesomeIcons.solidMessage, 'CHAT'),
            iconNavBar(FontAwesomeIcons.solidImage, 'ALBUM'),
            iconNavBar(FontAwesomeIcons.solidUser, 'PROFILE'),
          ],
        ),
      ),
    );
  }
}
