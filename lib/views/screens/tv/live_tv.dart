import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/getx/home/home_screen_state.dart';
import 'package:flutter_stream_mobile/views/screens/tv/items/live_tv_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LiveTvScreen extends StatelessWidget {
  const LiveTvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenState _homeScreenState = Get.put(HomeScreenState());
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: FutureBuilder(
            future: _homeScreenState.getAllChannels(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('no channel found..!'),
                );
              } else {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10.0, // Spacing between columns
                    mainAxisSpacing: 10.0, // Spacing between rows
                    childAspectRatio: 1.0, // Aspect ratio of each item
                  ),
                  itemCount: _homeScreenState.channels.length,
                  padding: const EdgeInsets.all(0), // Adjust padding if needed
                  itemBuilder: (context, index) {
                    return LiveTvItem(
                      channelModel: _homeScreenState.channels[index],
                    ); // Replace with your actual widget
                  },
                );
              }
            }));
  }
}
