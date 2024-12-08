import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/main.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

void showToastNotification(String message, bool isSuccess) {
  Get.snackbar(
    isSuccess ? 'Success' : 'Failed',
    message,
    margin: const EdgeInsets.only(top: 10),
    backgroundColor: isSuccess ? secondaryColor.withOpacity(0.4) : primaryColor,
    colorText: Colors.white,
    // borderColor: primaryColor,
    // borderRadius: 15,
  );
}
