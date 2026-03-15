import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepositoryImpl(this.authRemoteDatasource);

  @override
  Future<User> signIn(String email, String password) {
    return authRemoteDatasource.signIn(email, password);
  }

  @override
  Future<User> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String imageUrl,
  ) {
    return authRemoteDatasource.signUp(
      email,
      password,
      userName,
      phone,
      imageUrl,
    );
  }

  @override
  Future<void> resetpassword(String email) {
    return authRemoteDatasource.resetPassword(email);
  }
}
