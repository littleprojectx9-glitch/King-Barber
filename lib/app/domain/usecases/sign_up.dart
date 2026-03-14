import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repositorie.dart';

class SignUp {
  final AuthRepository repository;
  SignUp(this.repository);

  Future<User> signUp(
    String userId,
    String email,
    String password,
    String userName,
    String phone,
    String imageUrl,
  ) {
    return repository.signUp(
      userId,
      email,
      password,
      userName,
      phone,
      imageUrl,
    );
  }
}
