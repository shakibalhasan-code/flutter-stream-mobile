import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/core/models/category_model.dart';
import 'package:flutter_stream_mobile/views/widgets/image_widget.dart';

class HomeCategoriesItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const HomeCategoriesItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: UrlImageWidget(imageUrl: categoryModel.image)),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      categoryModel.name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
