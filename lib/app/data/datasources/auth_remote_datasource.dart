import 'package:firebase_auth/firebase_auth.dart';
import 'package:king_barber/app/domain/models/user_model.dart';

abstract class AuthRemoteDatasource {
  Future<UserModel?> signIn(String email, String password);
  Future<UserModel?> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String photoUrl,
  );
  Future<void> resetPassword(String email);
  Future<void> logout();
  Stream<User?> getStream();
  Future<UserModel?> signInwithGoogle();
}
