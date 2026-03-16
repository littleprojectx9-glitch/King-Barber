import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:king_barber/app/routes/app_pages.dart';
import '../controllers/auth_gate_controller.dart';

class AuthGateView extends GetView<AuthGateController> {
  const AuthGateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: controller.authStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (snapshot.data == null) {
              Get.offAllNamed(Routes.SIGN_IN);
            } else {
              Get.offAllNamed(Routes.HOME);
            }
          });

          return const SizedBox();
        },
      ),
    );
  }
}
