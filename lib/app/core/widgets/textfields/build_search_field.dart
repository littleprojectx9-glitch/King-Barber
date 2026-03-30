import 'package:flutter/material.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';

Widget buildSearchField(TextEditingController searchController) {
  return TextField(
    controller: searchController,
    decoration: InputDecoration(
      hintText: 'Cari produk...',
      hintStyle: AppTextStyle.hintText,
      prefixIcon: Icon(Icons.search),
      suffixIcon: IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          searchController.clear();
        },
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    onChanged: (value) {
      print("Search: $value");
    },
  );
}
