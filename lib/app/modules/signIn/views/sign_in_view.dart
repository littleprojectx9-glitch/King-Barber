import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_barber/app/core/widgets/buttons/build_another_button_login.dart';
import 'package:king_barber/app/core/widgets/textfields/build_universal_field.dart';
import 'package:king_barber/app/core/widgets/buttons/build_auth_button.dart';
import 'package:king_barber/app/core/widgets/textfields/build_password_field.dart';
import 'package:king_barber/app/core/widgets/buttons/build_text_button.dart';
import 'package:king_barber/app/core/widgets/input_label.dart';
import 'package:king_barber/app/routes/app_pages.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
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
                Text('LOGIN', style: AppTextStyle.heading1),
                Text(
                  'Masukkan silahkan login untuk dapat menggunakan aplikasi',
                  style: AppTextStyle.body,
                ),
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
                buildTextButton('Lupa Password?', () {}),
                Obx(
                  () => buildAuthButton(
                    controller.isLoading.value
                        ? Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : Text('LOGIN', style: AppTextStyle.button),
                    () {
                      controller.isLoading.value
                          ? null
                          : controller.callSignIn(
                              controller.email.text,
                              controller.password.text,
                            );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: Text('atau login dengan', style: AppTextStyle.body),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildAnotherButtonLogin(
                      () => controller.callSignInwithGoogle(),
                      'assets/icons/google.png',
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('belum memiliki akun?', style: AppTextStyle.body),
                      buildTextButton(
                        'Register',
                        () => Get.toNamed(Routes.SIGN_UP),
                      ),
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
