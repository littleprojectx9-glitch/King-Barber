import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import '../../core/erors/login_eror.dart';
import '../../core/erors/register_eror.dart';
import '../../core/utils/helper.dart';
import '../../domain/models/user_model.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  @override
  final fb.FirebaseAuth auth;
  @override
  final FirebaseFirestore firestore;

  AuthRemoteDatasourceImpl(this.auth, this.firestore);

  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;

      if (user == null) {
        throw Exception('User tidak ditemukan');
      }

      return UserModel.fromFirebase(user);
    } on fb.FirebaseAuthException catch (e) {
      LoginEror().handleLoginError(e);
      rethrow;
    } catch (_) {
      SnackBarHelper.cautionSnacbar(
        "Terjadi kesalahan, silahkan coba beberapa saat lagi",
      );
      rethrow;
    }
  }

  @override
  Future<UserModel> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String photoUrl,
  ) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;

      if (user == null) {
        throw Exception('Gagal membuat akun');
      }

      await firestore.collection('user').doc(user.uid).set({
        'uId': user.uid,
        'userName': userName,
        'email': email,
        'phone': phone,
        'photoUrl': photoUrl,
      });

      return UserModel.fromFirebase(user);
    } on fb.FirebaseAuthException catch (e) {
      RegisterEror().handleRegisterError(e);
      rethrow;
    } catch (_) {
      SnackBarHelper.cautionSnacbar(
        "Terjadi kesalahan, silahkan coba beberapa saat lagi",
      );
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String email) {
    return auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> logout() {
    return auth.signOut();
  }

  @override
  Stream<fb.User?> authStream() {
    return auth.authStateChanges();
  }
}
