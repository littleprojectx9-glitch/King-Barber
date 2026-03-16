import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/utils/helper.dart';
import 'package:king_barber/app/domain/usecases/sign_in.dart';

class SignInController extends GetxController {
  final SignInUsecase signIn;

  SignInController(this.signIn);

  var isLoading = false.obs;
  RxBool isPasswordObs = true.obs;
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  Future<void> signInCtrl(String email, String password) async {
    if (email.trim().isNotEmpty && password.trim().isNotEmpty) {
      isLoading.value = true;
      await signIn.call(email, password);
      isLoading.value = false;
    } else {
      SnackBarHelper.cautionSnacbar(
        'Harap mengisi email dan password dengan benar',
      );
    }
  }
}
