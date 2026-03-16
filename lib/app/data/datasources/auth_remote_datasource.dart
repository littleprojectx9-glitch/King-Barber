import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:king_barber/app/domain/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AuthRemoteDatasource {
  final fb.FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRemoteDatasource(this.auth, this.firestore);

  Future<UserModel> signIn(String email, String password);

  Future<UserModel> signUp(
    String email,
    String password,
    String userName,
    String phone,
    String photoUrl,
  );

  Future<void> resetPassword(String email);

  Future<void> logout();

  Stream<fb.User?> authStream();
}
