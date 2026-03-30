import 'package:firebase_auth/firebase_auth.dart' as fa;
import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<User?> signIn(String email, String password) {
    return remote.signIn(email, password);
  }

  @override
  Future<User?> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String photoUrl,
  ) {
    return remote.signUp(email, password, userName, phone, photoUrl);
  }

  @override
  Future<void> resetPassword(String email) {
    return remote.resetPassword(email);
  }

  @override
  Future<void> logOut() {
    return remote.logout();
  }

  @override
  Stream<fa.User?> getStream() {
    return remote.getStream();
  }

  @override
  Future<User?> signInwithGoogle() {
    return remote.signInwithGoogle();
  }
}
