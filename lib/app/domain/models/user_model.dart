import 'package:king_barber/app/data/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

class UserModel extends User {
  UserModel({
    required super.userId,
    required super.email,
    required super.userName,
    required super.phone,
    required super.imageUrl,
  });

  factory UserModel.fromFirebase(fb.User user) {
    return UserModel(
      userId: user.uid,
      email: user.email ?? '',
      userName: user.displayName ?? '',
      phone: user.phoneNumber ?? '',
      imageUrl: user.photoURL ?? '',
    );
  }
}
