import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/domain/usercases/get_stream.dart';
import 'package:king_barber/app/routes/app_pages.dart';

class AuthGateController extends GetxController {
  final FirebaseAuth auth;
  final GetStreamUsecase stream;

  AuthGateController(this.auth, this.stream);

  @override
  void onInit() {
    super.onInit();

    stream.call().listen((user) {
      final currentUser = auth.currentUser;

      if (currentUser != null && currentUser.emailVerified) {
        Get.offAllNamed(Routes.MAIN);
      } else {
        Get.offAllNamed(Routes.SIGN_IN);
      }
    });
  }
}
