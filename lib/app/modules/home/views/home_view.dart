import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: Center(
        child: Text('HomeView is working', style: AppTextStyle.body),
      ),
    );
  }
}
