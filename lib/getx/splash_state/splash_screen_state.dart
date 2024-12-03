import 'package:get/get.dart';

import '../../services/notifications_services.dart';

class SplashScreenState extends GetxController {
  final NotificationsServices _notificationsServices =
  Get.put(NotificationsServices());

  @override
  void onInit() {
    super.onInit();
  }
}

