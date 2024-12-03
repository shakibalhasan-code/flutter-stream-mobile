import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/screens/home/tab_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../../../getx/splash_state/splash_screen_state.dart';
import '../../../services/notifications_services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashScreenState _splashState = Get.put(SplashScreenState());
    final NotificationsServices _notificationsServices =
        Get.put(NotificationsServices());

    return Scaffold(
      body: TabScreen(),
    );
  }
}
