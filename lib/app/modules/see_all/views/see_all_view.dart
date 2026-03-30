import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/see_all_controller.dart';

class SeeAllView extends GetView<SeeAllController> {
  const SeeAllView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SeeAllView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SeeAllView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
