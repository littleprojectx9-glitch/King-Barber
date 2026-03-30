import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import 'package:king_barber/app/data/datasources/auth_remote_datasource_impl.dart';
import 'package:king_barber/app/data/repositories/auth_repository_impl.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';
import 'package:king_barber/app/domain/usercases/get_stream.dart';

import 'package:king_barber/app/modules/authGate/controllers/auth_gate_controller.dart';

class AuthGateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirebaseAuth.instance);
    Get.lazyPut(() => FirebaseFirestore.instance);
    Get.lazyPut(() => GetStreamUsecase(Get.find()));
    Get.lazyPut<AuthRemoteDatasource>(
      () => AuthRemoteDatasourceImpl(Get.find(), Get.find()),
    );
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find()));
    Get.put<AuthGateController>(AuthGateController(Get.find(), Get.find()));
  }
}
