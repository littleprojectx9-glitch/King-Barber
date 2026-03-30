import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import 'package:king_barber/app/domain/models/user_model.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRemoteDatasourceImpl(this.auth, this.firestore);

  @override
  Future<UserModel?> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      var user = credential.user;

      if (user == null) {
        throw Exception('Akun tidak ditemukan');
      }

      await user.reload();
      user = auth.currentUser;

      if (user != null && !user.emailVerified) {
        await auth.signOut();
        throw Exception('Email belum di verifikasi');
      }

      return UserModel.fromFirebase(user!);
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserModel?> signUp(
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
        throw Exception('Registrasi gagal');
      }

      await user.sendEmailVerification();
      await firestore.collection('users').doc(user.uid).set({
        'uId': user.uid,
        'email': email,
        'userName': userName,
        'phone': phone,
        'photoUrl': photoUrl,
      });
      await auth.signOut();

      return null;
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (_) {
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
  Stream<User?> getStream() {
    return auth.authStateChanges();
  }

  @override
  Future<UserModel?> signInwithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      await googleSignIn.initialize(
        serverClientId:
            "871346812255-bo8u2utna6cftoq570ovjilgm2hi4uur.apps.googleusercontent.com",
      );

      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );

      final user = userCredential.user;

      if (user == null) return null;

      return UserModel.fromFirebase(user);
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        return null;
      }
      rethrow;
    }
  }
}
