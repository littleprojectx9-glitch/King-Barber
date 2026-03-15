import 'package:king_barber/app/core/erors/login_eror.dart';
import 'package:king_barber/app/core/utils/helper.dart';
import 'package:king_barber/app/domain/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRemoteDatasource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  AuthRemoteDatasource(this.auth, this.firestore);

  Future<UserModel> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) {
        throw Exception("User tidak ditemukan");
      }
      return UserModel.fromFirebase(credential.user!);
    } on FirebaseAuthException catch (e) {
      LoginEror().handleLoginError(e);
      rethrow;
    } catch (_) {
      SnackBarHelper.cautionSnacbar('Eror tidak diketahui');
      rethrow;
    }
  }

  Future<UserModel> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String imageUrl,
  ) async {
    final credential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = credential.user;

    if (user == null) {
      throw Exception('Failed to create Account');
    }

    firestore.collection('user').doc(user.uid).set({
      'uId': user.uid,
      'email': email,
      'userName': userName,
      'phone': phone,
      'imageUrl': imageUrl,
    });

    return UserModel.fromFirebase(user);
  }

  Future<void> resetPassword(String email) async {
    auth.sendPasswordResetEmail(email: email);
  }
}
