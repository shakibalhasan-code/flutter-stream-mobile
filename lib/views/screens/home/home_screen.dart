import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/getx/home/home_screen_state.dart';
import 'package:flutter_stream_mobile/util/app_data/icons/icons.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/categories_item.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/channel_item_home.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/slider_item.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/slider_widget_home.dart';
import 'package:flutter_stream_mobile/views/widgets/items/video_item.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? allCategoryClicked, allChannelClicked, allVideo;
  const HomeScreen(
      {super.key,
      this.allCategoryClicked,
      this.allChannelClicked,
      this.allVideo});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final HomeScreenState _homeScreenState = Get.put(HomeScreenState());
    _homeScreenState.initializedAllData();
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.01),
          FutureBuilder(
            future: _homeScreenState.getRecentVideos(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return SizedBox(
                  width: double.infinity,
                  height: isPortrait ? screenHeight * 0.25 : screenHeight * 0.4,
                  child: slider_home(_homeScreenState.recentVideos),
                );
              }
            },
          ),
          SizedBox(height: screenHeight * 0.01),
          _buildSectionHeader(
            context,
            icon: HugeIcons.strokeRoundedCatalogue,
            title: 'Categories',
            onPressed: () {
              setState(() {
                widget.allCategoryClicked!.call();
              });
            },
          ),
          FutureBuilder(
            future: _homeScreenState.getAllCategories(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return SizedBox(
                  height: screenHeight * 0.07,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: _homeScreenState.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return HomeCategoriesItem(
                        categoryModel: _homeScreenState.categories[i],
                      );
                    },
                  ),
                );
              }
            },
          ),
          _buildSectionHeader(
            context,
            icon: HugeIcons.strokeRoundedTv01,
            title: 'Recent Channels',
            onPressed: () {
              setState(() {
                widget.allChannelClicked!.call();
              });
            },
          ),
          FutureBuilder(
            future: _homeScreenState.getAllChannels(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return SizedBox(
                  height: screenHeight * 0.15,
                  child: ListView.builder(
                    itemCount: _homeScreenState.channels.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ChannelItemHome(
                        channelModel: _homeScreenState.channels[index],
                      );
                    },
                  ),
                );
              }
            },
          ),
          _buildSectionHeader(
            context,
            icon: HugeIcons.strokeRoundedVideo01,
            title: 'Recent Videos',
            onPressed: () {
              setState(() {
                widget.allVideo!.call();
              });
            },
          ),
          FutureBuilder(
            future: _homeScreenState.getRecentVideos(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _homeScreenState.recentVideos.length,
                    itemBuilder: (context, index) {
                      return VideoItem(
                        videoModel: _homeScreenState.recentVideos[index],
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onPressed}) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: primaryColor,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: theme.textTheme.titleMedium!.copyWith(color: primaryColor),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'View All',
              style: theme.textTheme.titleSmall!.copyWith(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
