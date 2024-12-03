import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/app_data/app_strings.dart';
import 'package:flutter_stream_mobile/util/app_data/content/images.dart';
import 'package:flutter_stream_mobile/util/app_data/icons/icons.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/screens/category/categories_screen.dart';
import 'package:flutter_stream_mobile/views/screens/home/home_screen.dart';
import 'package:flutter_stream_mobile/views/screens/tv/live_tv.dart';
import 'package:flutter_stream_mobile/views/screens/video_screen/video_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> bodyContent = [
    const HomeScreen(),
    const VideoScreen(),
    const CategoriesScreen(),
    const LiveTvScreen(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Text(
          appName,
          style: textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: secondaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [header_drawer(textTheme), list_menu_drawer(textTheme)],
            ),
          ),
        ),
      ),
      body: bodyContent[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: secondaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        currentIndex: selectedIndex,
        onTap: (i) {
          setState(() {
            selectedIndex = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: homeIcon,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: videosIcon,
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: categoriesIcon,
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: tvIcon,
            label: 'Live TV',
          ),
          BottomNavigationBarItem(
            icon: settingsIcon,
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Column list_menu_drawer(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          trailing: rightArrowIcon,
          title: Text(
            'Live Tv',
            style: textTheme.titleSmall,
          ),
          leading: tvIcon,
        ),
        Divider(
          height: 0.6,
          color: Colors.grey.withOpacity(0.3),
        ),
        ListTile(
          trailing: rightArrowIcon,
          title: Text(
            'Videos',
            style: textTheme.titleSmall,
          ),
          leading: videosIcon,
        ),
        Divider(
          height: 0.6,
          color: Colors.grey.withOpacity(0.3),
        ),
        ListTile(
          trailing: rightArrowIcon,
          title: Text(
            'All Categories',
            style: textTheme.titleSmall,
          ),
          leading: categoriesIcon,
        ),
        Divider(
          height: 0.6,
          color: Colors.grey.withOpacity(0.3),
        )
      ],
    );
  }

  SizedBox header_drawer(TextTheme textTheme) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(appLogo),
            ),
          ),
          const SizedBox(height: 5),
          Text(appName, style: textTheme.titleMedium)
        ],
      ),
    );
  }
}
