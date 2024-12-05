import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/views/screens/tv/items/live_tv_item.dart';

class LiveTvScreen extends StatelessWidget {
  const LiveTvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          childAspectRatio: 1.0, // Aspect ratio of each item
        ),
        itemCount: 10,
        padding: const EdgeInsets.all(0), // Adjust padding if needed
        itemBuilder: (context, index) {
          return LiveTvItem(); // Replace with your actual widget
        },
      )),
    );
  }
}
