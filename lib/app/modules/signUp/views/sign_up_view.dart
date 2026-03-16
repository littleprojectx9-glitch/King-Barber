import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/build_another_button_login.dart';
import 'package:king_barber/app/core/widgets/build_universal_field.dart';
import 'package:king_barber/app/core/widgets/build_large_button.dart';
import 'package:king_barber/app/core/widgets/build_password_field.dart';
import 'package:king_barber/app/core/widgets/build_text_button.dart';
import 'package:king_barber/app/core/widgets/input_label.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Text('REGISTER', style: AppTextStyle.heading1),
                const SizedBox(height: 32),
                inputLabelField('Email'),
                buildUniversalField(
                  hintText: 'masukkan email',
                  textInputType: TextInputType.emailAddress,
                  controller: controller.email,
                ),
                const SizedBox(height: 12),
                inputLabelField('Password'),
                Obx(
                  () => buildPasswordField(
                    hintText: 'Masukkan password',
                    isObs: controller.isPasswordObs.value,
                    eyeTap: () => controller.isPasswordObs.toggle(),
                    icon: controller.isPasswordObs.value
                        ? FontAwesomeIcons.solidEye
                        : FontAwesomeIcons.eye,
                    controller: controller.password,
                  ),
                ),
                const SizedBox(height: 12),
                inputLabelField('Konfirmasi Password'),
                Obx(
                  () => buildPasswordField(
                    hintText: 'Masukkan ulang password',
                    isObs: controller.isRepeatPasswordObs.value,
                    eyeTap: () => controller.isRepeatPasswordObs.toggle(),
                    icon: controller.isRepeatPasswordObs.value
                        ? FontAwesomeIcons.solidEye
                        : FontAwesomeIcons.eye,
                    controller: controller.repeatPassword,
                  ),
                ),
                const SizedBox(height: 12),
                inputLabelField('Nama Pengguna'),
                buildUniversalField(
                  hintText: 'Masukkan nama pengguna',
                  textInputType: TextInputType.name,
                  controller: controller.userName,
                ),
                const SizedBox(height: 12),
                inputLabelField('Telepon'),
                buildUniversalField(
                  hintText: 'Masukkan nomor telepon',
                  textInputType: TextInputType.phone,
                  controller: controller.phone,
                ),
                const SizedBox(height: 24),
                buildLargeButton('REGISTER', () {}),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: Text('atau register dengan', style: AppTextStyle.body),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildAnotherButtonLogin(() {}, 'assets/icons/google.png'),
                    const SizedBox(width: 12),
                    buildAnotherButtonLogin(() {}, 'assets/icons/facebook.png'),
                  ],
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('sudah memiliki akun?', style: AppTextStyle.body),
                      buildTextButton('Login', () => Get.back()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
