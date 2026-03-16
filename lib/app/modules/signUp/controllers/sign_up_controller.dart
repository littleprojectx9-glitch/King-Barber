import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isPasswordObs = true.obs;
  RxBool isRepeatPasswordObs = true.obs;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController repeatPassword;
  late TextEditingController userName;
  late TextEditingController phone;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
    repeatPassword = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
    repeatPassword.dispose();
    userName.dispose();
    phone.dispose();
  }
}
