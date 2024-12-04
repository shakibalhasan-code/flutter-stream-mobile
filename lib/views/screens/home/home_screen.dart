import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/app_data/icons/icons.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/categories_item.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/channel_item_home.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/items/slider_item.dart';
import 'package:flutter_stream_mobile/views/screens/home/widgets/slider_widget_home.dart';
import 'package:flutter_stream_mobile/views/widgets/items/video_item.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'image':
            'https://c4.wallpaperflare.com/wallpaper/810/33/235/movies-avatar-1680x1050-entertainment-movies-hd-art-wallpaper-preview.jpg',
        'title': 'Avatar'
      },
      {
        'image':
            'https://images.thedirect.com/media/article_full/spider-man-no-way-home-posters.jpg',
        'title': 'New Spider-Man: No Way Home'
      },
    ];

    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.01),
          SizedBox(
            width: double.infinity,
            height: isPortrait ? screenHeight * 0.25 : screenHeight * 0.4,
            child: slider_home(items),
          ),
          SizedBox(height: screenHeight * 0.01),
          _buildSectionHeader(
            context,
            icon: HugeIcons.strokeRoundedCatalogue,
            title: 'Categories',
            onPressed: () {},
          ),
          SizedBox(
            height: screenHeight * 0.07,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return HomeCategoriesItem();
              },
            ),
          ),
          _buildSectionHeader(
            context,
            icon: HugeIcons.strokeRoundedTv01,
            title: 'Recent Channels',
            onPressed: () {},
          ),
          SizedBox(
            height: screenHeight * 0.15,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ChannelItemHome();
              },
            ),
          ),
          _buildSectionHeader(
            context,
            icon: HugeIcons.strokeRoundedVideo01,
            title: 'Recent Videos',
            onPressed: () {},
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return VideoItem();
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
