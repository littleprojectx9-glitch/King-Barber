import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  late TextEditingController chat;

  @override
  void onInit() {
    super.onInit();
    chat = TextEditingController();
  }

  @override
  void dispose() {
    dispose();
    super.dispose();
  }
}
