import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/getx/home/home_screen_state.dart';
import 'package:flutter_stream_mobile/views/screens/category/items/category_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenState _homeScreenState = Get.put(HomeScreenState());
    _homeScreenState.getAllCategories();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _homeScreenState.categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            categoryModel: _homeScreenState.categories[index],
          );
        },
      ),
    );
  }
}
