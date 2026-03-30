import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/domain/usercases/logout.dart';
import 'package:king_barber/app/routes/app_pages.dart';

class HomesController extends GetxController {
  RxString category = 'Pangkas Dewasa'.obs;
  late TextEditingController searchController;
  final LogoutUsecase logOut;

  HomesController(this.logOut);

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Future<void> callLogout() async {
    await logOut.call();
    Get.offAllNamed(Routes.AUTH_GATE);
  }
}
