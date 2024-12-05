import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/app_data/icons/icons.dart';

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
