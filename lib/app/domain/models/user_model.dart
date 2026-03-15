import 'package:king_barber/app/data/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

class UserModel extends User {
  UserModel({
    required super.uId,
    required super.userName,
    required super.email,
    required super.phone,
    required super.imageUrl,
  });

  factory UserModel.fromFirebase(fb.User user) {
    return UserModel(
      uId: user.uid,
      userName: user.displayName ?? '',
      email: user.email ?? '',
      phone: user.phoneNumber ?? '',
      imageUrl: user.photoURL ?? '',
    );
  }
}
