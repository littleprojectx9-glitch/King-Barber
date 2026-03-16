import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/data/datasources/auth_remote_datasource.dart';
import 'package:king_barber/app/data/datasources/auth_remote_datasource_impl.dart';
import 'package:king_barber/app/data/repositories/auth_repository_impl.dart';
import 'package:king_barber/app/domain/repositories/auth_repository.dart';
import 'package:king_barber/app/domain/usecases/auth_stream.dart';
import 'package:king_barber/app/modules/authGate/controllers/auth_gate_controller.dart';

class AuthGateBinding extends Bindings {
  @override
  void dependencies() {
    /// Firebase
    Get.lazyPut(() => FirebaseAuth.instance);
    Get.lazyPut(() => FirebaseFirestore.instance);

    /// Datasource
    Get.lazyPut<AuthRemoteDatasource>(
      () => AuthRemoteDatasourceImpl(Get.find(), Get.find()),
    );

    /// Usecase
    Get.lazyPut(() => AuthStreamUsecase(Get.find()));

    /// Repository (INI YANG KURANG)
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find()));

    /// Controller
    Get.lazyPut<AuthGateController>(
      () => AuthGateController(Get.find(), Get.find()),
    );
  }
}
