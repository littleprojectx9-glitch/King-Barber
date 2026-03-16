import 'package:firebase_auth/firebase_auth.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class AuthStreamUsecase {
  final AuthRepository repository;
  AuthStreamUsecase(this.repository);

  Stream<User?> call() {
    return repository.authStream;
  }
}
