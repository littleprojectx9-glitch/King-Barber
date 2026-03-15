import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class SignIn {
  final AuthRepository repository;

  SignIn(this.repository);
  Future<User> call(String email, String password) {
    return repository.signIn(email, password);
  }
}
