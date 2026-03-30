import 'package:get/get.dart';

import '../controllers/all_chat_controller.dart';

class AllChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllChatController>(
      () => AllChatController(),
    );
  }
}
