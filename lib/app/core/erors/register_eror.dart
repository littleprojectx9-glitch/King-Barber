import 'package:firebase_auth/firebase_auth.dart';
import 'package:king_barber/app/core/utils/helper.dart';

class RegisterEror {
  void handleRegisterError(FirebaseAuthException e) {
    switch (e.code) {
      case "weak-password":
        SnackBarHelper.cautionSnacbar("Password too weak");
        break;
      case "email-already-in-use":
        SnackBarHelper.cautionSnacbar("Email already in use");
        break;
      case "invalid-email":
        SnackBarHelper.cautionSnacbar("Invalid email format");
        break;
      default:
        SnackBarHelper.cautionSnacbar("Registration failed");
    }
  }
}
