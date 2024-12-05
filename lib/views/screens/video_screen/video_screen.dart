import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/views/widgets/items/video_item.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return VideoItem();
          },
        ),
      ),
    );
  }
}
