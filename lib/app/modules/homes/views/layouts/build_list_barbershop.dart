import 'package:flutter/material.dart';
import 'package:king_barber/app/modules/homes/views/widgets/build_barbershop.dart';

Widget buildListBarbershop(VoidCallback onTap) {
  return SizedBox(
    height: 180,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return buildBarbershop(onTap: onTap);
      },
    ),
  );
}
