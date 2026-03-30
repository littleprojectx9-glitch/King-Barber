import 'package:king_barber/app/data/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

abstract class AuthRepository {
  Future<User?> signIn(String email, String password);
  Future<User?> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String photoUrl,
  );
  Future<void> resetPassword(String email);
  Future<void> logOut();
  Stream<fa.User?> getStream();
  Future<User?> signInwithGoogle();
}
