import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/app_data/app_strings.dart';
import 'package:flutter_stream_mobile/util/app_data/content/images.dart';

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
