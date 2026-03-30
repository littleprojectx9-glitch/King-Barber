import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/erors/register_eror.dart';
import 'package:king_barber/app/core/utils/snacbar_helper.dart';
import 'package:king_barber/app/domain/usercases/sign_up.dart';

class SignUpController extends GetxController {
  final SignUpUsecase signUp;

  SignUpController(this.signUp);

  RxBool isPasswordObs = true.obs;
  RxBool isRepeatPasswordObs = true.obs;
  var isLoading = false.obs;
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

  void clearField() {
    email.clear();
    password.clear();
    repeatPassword.clear();
    userName.clear();
    phone.clear();
  }

  Future<void> callSignUp(
    String email,
    String password,
    String repeatPassword,
    String userName,
    String phone,
  ) async {
    try {
      if (email.trim().isEmpty ||
          password.trim().isEmpty ||
          repeatPassword.trim().isEmpty ||
          userName.trim().isEmpty ||
          phone.trim().isEmpty) {
        SnackBarHelper.cautionSnacbar(
          'Mohon untuk mengisi seluruh data dengan benar',
        );
        return;
      }

      if (password.trim().length < 6) {
        SnackBarHelper.warning('Password minimal 6 karakter');
        return;
      }

      if (password.trim().toString() != repeatPassword.trim().toString()) {
        SnackBarHelper.cautionSnacbar(
          'Password tidak sesuai, mohon periksa kembali',
        );
        return;
      }

      isLoading.value = true;
      await signUp.call(
        email.trim(),
        password.trim(),
        userName,
        phone.trim(),
        '',
      );
      SnackBarHelper.success(
        'Silahkan cek email anda untuk melakukan verifikasi',
      );
      clearField();
    } on FirebaseAuthException catch (e) {
      RegisterEror().handleRegisterError(e);
    } catch (_) {
      SnackBarHelper.cautionSnacbar('Terjadi kesalahan');
    } finally {
      isLoading.value = false;
    }
  }
}
