import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/app_data/app_strings.dart';
import 'package:flutter_stream_mobile/util/app_data/content/images.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:hugeicons/hugeicons.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const SizedBox(height: 8),
        SizedBox(
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
        ),
        Text(
          'V1.0.0',
          style: textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(color: secondaryColor),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(HugeIcons.strokeRoundedInformationCircle),
                  title: Text(
                    'About',
                    style: textTheme.titleMedium!.copyWith(color: primaryColor),
                  ),
                ),
                ListTile(
                  leading: Icon(HugeIcons.strokeRoundedPolicy),
                  title: Text(
                    'Privacy Policy',
                    style: textTheme.titleMedium!.copyWith(color: primaryColor),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text(
                    'Rate Us',
                    style: textTheme.titleMedium!.copyWith(color: primaryColor),
                  ),
                ),
                ListTile(
                  leading: Icon(HugeIcons.strokeRoundedMore),
                  title: Text(
                    'More App',
                    style: textTheme.titleMedium!.copyWith(color: primaryColor),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.wordpress_sharp),
                  title: Text(
                    'Visit Us',
                    style: textTheme.titleMedium!.copyWith(color: primaryColor),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
