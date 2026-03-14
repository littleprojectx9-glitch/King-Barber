import 'package:get/get.dart';

class SnackBarHelper {
  static void success(String message) {
    Get.snackbar('Success', message);
  }

  static void error(String message) {
    Get.snackbar('Error', message);
  }
}
