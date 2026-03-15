import 'package:king_barber/app/data/entities/user.dart';

abstract class AuthRepository {
  Future<User> signIn(String email, String password);
  Future<User> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String imageUrl,
  );
  Future<void> resetpassword(String email);
}
