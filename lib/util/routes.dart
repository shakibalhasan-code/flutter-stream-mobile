import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/screens/splash/splash_screen.dart';

List<GetPage<dynamic>> get app_route {
  return [
    GetPage(name: '/splash', page: () => const SplashScreen()),
  ];
}
