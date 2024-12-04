import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/views/widgets/image_widget.dart';

class HomeCategoriesItem extends StatelessWidget {
  const HomeCategoriesItem({super.key});

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
                child: const UrlImageWidget(
                    imageUrl:
                        'https://s.studiobinder.com/wp-content/uploads/2022/11/Movie-Genres-Types-of-Movies-List-of-Genres-and-Categories-Featured.jpg')),
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
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      'Actions',
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
