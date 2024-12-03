import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';

ThemeData theme_data() => ThemeData(
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primaryColor, // Sets the color of the progress indicator
        circularTrackColor: Colors.grey[200], // Sets the track color
        linearTrackColor: Colors.grey[300], // For LinearProgressIndicator
      ),
      primaryColor: primaryColor,
      scaffoldBackgroundColor: secondaryColorLight,
      appBarTheme: AppBarTheme(
        backgroundColor: secondaryColor,
        titleTextStyle: TextStyle(
            color: platinumAccent, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: primaryColor),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      cardColor: deepNavy,
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
