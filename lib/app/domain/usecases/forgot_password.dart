import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repositorie.dart';

class ForgotPassword {
  final AuthRepository repository;
  ForgotPassword(this.repository);

  Future<void> forgotPassword(String email) {
    return repository.forgotPassword(email);
  }
}
