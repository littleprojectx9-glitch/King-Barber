import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/erors/login_eror.dart';
import 'package:king_barber/app/core/utils/snacbar_helper.dart';
import 'package:king_barber/app/domain/usercases/sign_in.dart';
import 'package:king_barber/app/domain/usercases/signin_with_google.dart';
import 'package:king_barber/app/routes/app_pages.dart';

class SignInController extends GetxController {
  final SignInUsecase signIn;
  final SigninWithGoogleUsecase signInwithGoogle;

  SignInController(this.signIn, this.signInwithGoogle);

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

  void clearField() {
    email.clear();
    password.clear();
  }

  Future<void> callSignIn(String email, String password) async {
    try {
      if (email.trim().isEmpty || password.trim().isEmpty) {
        isLoading.value = true;
        SnackBarHelper.cautionSnacbar('Mohon untuk mengisi email dan password');
        return;
      }

      isLoading.value = true;
      await signIn.call(email, password);
      clearField();
      Get.toNamed(Routes.HOMES);
    } on FirebaseAuthException catch (e) {
      LoginEror().handleLoginError(e);
    } catch (_) {
      SnackBarHelper.error('Terjadi kesalahan');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> callSignInwithGoogle() async {
    try {
      isLoading.value = true;
      await signInwithGoogle.signInwithGoogle();
    } on FirebaseAuthException catch (e) {
      SnackBarHelper.error('Terjadi kesalaha, pesan eror $e');
    } catch (_) {
      SnackBarHelper.error('Terjadi kesalahan');
    } finally {
      isLoading.value = false;
    }
  }
}
