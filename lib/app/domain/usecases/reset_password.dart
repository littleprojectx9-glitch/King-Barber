import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class ResetPassword {
  final AuthRepository repository;

  ResetPassword(this.repository);
  Future<void> call(String email) {
    return repository.resetpassword(email);
  }
}
