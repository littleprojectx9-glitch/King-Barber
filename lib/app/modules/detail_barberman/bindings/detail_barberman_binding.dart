import 'package:get/get.dart';

import '../controllers/detail_barberman_controller.dart';

class DetailBarbermanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBarbermanController>(
      () => DetailBarbermanController(),
    );
  }
}
