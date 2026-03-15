import 'package:firebase_auth/firebase_auth.dart';
import 'package:king_barber/app/core/utils/helper.dart';

class LoginEror {
  void handleLoginError(FirebaseAuthException e) {
    switch (e.code) {
      case "user-not-found":
        SnackBarHelper.cautionSnacbar("Email is not registered");
        break;
      case "wrong-password":
        SnackBarHelper.cautionSnacbar("Incorrect password");
        break;
      case "invalid-email":
        SnackBarHelper.cautionSnacbar("Invalid email format");
        break;
      case "user-disabled":
        SnackBarHelper.cautionSnacbar("Account disabled");
        break;
      default:
        SnackBarHelper.cautionSnacbar("Login failed");
    }
  }
}
