import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import 'package:king_barber/app/data/entities/user.dart';
import 'package:king_barber/app/domain/repositories/auth_repositorie.dart';

class UserRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> signIn(String email, String password) {
    return remoteDataSource.signIn(email, password);
  }

  @override
  Future<User> signUp(
    String userId,
    String email,
    String password,
    String userName,
    String phone,
    String imageUrl,
  ) {
    return remoteDataSource.signUp(email, password, userName, phone, imageUrl);
  }
}
