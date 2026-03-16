import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class SignUpUsecase {
  final AuthRepository repository;
  SignUpUsecase(this.repository);

  Future<User> call(
    String email,
    String password,
    String userName,
    String phone,
    String photoUrl,
  ) {
    return repository.signUp(email, password, userName, phone, photoUrl);
  }
}
