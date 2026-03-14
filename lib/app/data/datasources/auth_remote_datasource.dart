import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:king_barber/app/domain/models/user_model.dart';

class AuthRemoteDatasource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRemoteDatasource(this.auth, this.firestore);

  Future<UserModel> signIn(String email, String password) async {
    final credential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return UserModel.fromFirebase(credential.user!);
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
      throw Exception('Register Failed');
    }
    firestore.collection('user').doc(user.uid).set({
      'userId': user.uid,
      'email': email,
      'userName': userName,
      'phone': phone,
      'imageUrl': imageUrl,
    });

    return UserModel.fromFirebase(user);
  }

  Future<void> resetPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }
}
