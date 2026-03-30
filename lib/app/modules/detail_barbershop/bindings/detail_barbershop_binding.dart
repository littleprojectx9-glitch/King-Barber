import 'package:get/get.dart';

import '../controllers/detail_barbershop_controller.dart';

class DetailBarbershopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBarbershopController>(
      () => DetailBarbershopController(),
    );
  }
}
