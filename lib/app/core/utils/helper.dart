import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SnackBarHelper {
  static void cautionSnacbar(String message) {
    Get.snackbar(
      "Caution",
      message,
      backgroundGradient: const LinearGradient(
        begin: Alignment.bottomCenter,
        colors: [Color(0xff9600ff), Color(0xffaebaf8)],
      ),
      duration: const Duration(seconds: 2),
      barBlur: 10,
    );
  }

  static void success(String message) {
    Get.snackbar('Success', message);
  }

  static void error(String message) {
    Get.snackbar('Error', message);
  }
}
