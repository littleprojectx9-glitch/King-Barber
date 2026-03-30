import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class SigninWithGoogleUsecase {
  final AuthRepository repository;
  SigninWithGoogleUsecase(this.repository);

  Future<User?> signInwithGoogle() {
    return repository.signInwithGoogle();
  }
}
