import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/slider_item.dart';

CarouselSlider slider_home(List<Map<String, dynamic>> items) {
  return CarouselSlider(
    items: items.map((item) {
      return slider_item(item);
    }).toList(),
    options: CarouselOptions(
      height: 180,
      aspectRatio: 16 / 9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 5),
      autoPlayAnimationDuration: const Duration(milliseconds: 1000),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
    ),
  );
}
