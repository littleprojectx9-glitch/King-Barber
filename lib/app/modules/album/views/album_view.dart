import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../controllers/album_controller.dart';

class AlbumView extends GetView<AlbumController> {
  const AlbumView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: (index % 2 == 0) ? 100 : 180,
            width: double.infinity,
            color: Colors.blue,
            child: Image.asset(
              'assets/images/barbershop.jpg',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
            ),
          );
        },
      ),
    );
  }
}
