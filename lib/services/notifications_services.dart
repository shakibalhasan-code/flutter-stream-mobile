
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class NotificationsServices extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  Future<void>requestNotificationPermission()async{


  }

  void notificationListener(){

    OneSignal.Notifications.addClickListener((event) {
      print('NOTIFICATION CLICK LISTENER CALLED WITH EVENT: $event');
    });

  }

}
