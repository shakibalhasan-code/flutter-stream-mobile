import 'package:flutter_stream_mobile/views/screens/video_play/video_play.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/screens/splash/splash_screen.dart';

List<GetPage<dynamic>> get app_route {
  return [
    GetPage(name: '/splash', page: () => const SplashScreen()),
    // GetPage(name: '/video-stream', page: () => const VideoPlayerScreen()),
  ];
}
