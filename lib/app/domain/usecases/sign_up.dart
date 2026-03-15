import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class SignUp {
  final AuthRepository repository;
  SignUp(this.repository);

  Future<User> call(
    String email,
    String password,
    String userName,
    String phone,
    String imageUrl,
  ) {
    return repository.signUp(email, password, userName, phone, imageUrl);
  }
}
