import 'package:firebase_auth/firebase_auth.dart' as fb;

import '../../domain/repositories/auth_repository.dart';

import '../datasources/auth_remote_datasource.dart';
import '../entities/user.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<User> signIn(String email, String password) {
    return remote.signIn(email, password);
  }

  @override
  Future<User> signUp(
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
  Stream<fb.User?> get authStream {
    return remote.authStream();
  }
}
