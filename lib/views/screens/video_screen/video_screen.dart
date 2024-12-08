import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/getx/home/home_screen_state.dart';
import 'package:flutter_stream_mobile/views/widgets/items/video_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenState _homeScreenState = Get.put(HomeScreenState());
    _homeScreenState.getRecentVideos();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _homeScreenState.recentVideos.length,
          itemBuilder: (context, index) {
            return VideoItem(
              videoModel: _homeScreenState.recentVideos[index],
            );
          },
        ),
      ),
    );
  }
}
