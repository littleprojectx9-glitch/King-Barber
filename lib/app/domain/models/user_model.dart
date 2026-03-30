import 'package:king_barber/app/data/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

class UserModel extends User {
  UserModel({
    required super.uId,
    required super.email,
    required super.userName,
    required super.phone,
    required super.photoUrl,
  });

  factory UserModel.fromFirebase(fa.User user) {
    return UserModel(
      uId: user.uid,
      email: user.email ?? '',
      userName: user.displayName ?? '',
      phone: user.phoneNumber ?? '',
      photoUrl: user.photoURL ?? '',
    );
  }
}
