import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class ResetPasswordUsecase {
  final AuthRepository repository;
  ResetPasswordUsecase(this.repository);

  Future<void> call(String email) {
    return repository.resetPassword(email);
  }
}
