import 'package:get/get.dart';
import 'package:king_barber/app/core/widgets/custom_dialog.dart';
import 'package:king_barber/app/routes/app_pages.dart';

class RegisterSuccesDialog {
  void showRegisterSuccessDialog(String email) {
    Get.dialog(
      CustomDialog(
        title: "Perhatian",
        content: "Akun berhasil dibuat.\nSilahkan verifikasi di email: $email",
        textConfirm: "OK",
        onConfirm: () {
          Get.offAllNamed(Routes.SIGN_IN);
        },
        textCancel: "Batal",
        onCancel: () => Get.back(),
      ),
    );
  }
}
