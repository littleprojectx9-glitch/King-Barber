import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/domain/usecases/auth_stream.dart';

class AuthGateController extends GetxController {
  final FirebaseAuth auth;
  final AuthStreamUsecase authStream;
  AuthGateController(this.auth, this.authStream);

  Stream<User?> getStream() {
    return authStream.call();
  }
}
