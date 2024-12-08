import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_stream_mobile/core/models/category_model.dart';
import 'package:flutter_stream_mobile/core/models/channel_model.dart';
import 'package:flutter_stream_mobile/core/models/video_model.dart';
import 'package:flutter_stream_mobile/helper/widget_helper/notification_widget.dart';
import 'package:get/get.dart';

class HomeScreenState extends GetxController {
  var isLoading = false.obs;

  var recentVideos = <VideoModel>[].obs;
  var categories = <CategoryModel>[].obs;
  var channels = <ChannelModel>[].obs;

  // @override
  // void onInit() {
  //   super.onInit();
  //   initializedAllData();
  // }

  Future<void> initializedAllData() async {
    try {
      isLoading.value = true;
      await getRecentVideos();
      await getAllCategories();
      await getAllChannels();
    } catch (e) {
      showToastNotification('Error: $e', false);
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getRecentVideos() async {
    var querySnapshot =
        await FirebaseFirestore.instance.collection('videos').get();
    recentVideos.value = querySnapshot.docs
        .map((doc) =>
            VideoModel.fromJson(doc.id, doc.data() as Map<String, dynamic>))
        .toList();
  }

  Future<void> getAllCategories() async {
    var querySnapshot =
        await FirebaseFirestore.instance.collection('categories').get();
    categories.value = querySnapshot.docs
        .map(
            (doc) => CategoryModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  Future<void> getAllChannels() async {
    var querySnapshot =
        await FirebaseFirestore.instance.collection('channels').get();
    channels.value = querySnapshot.docs
        .map((doc) =>
            ChannelModel.fromJson(doc.id, doc.data() as Map<String, dynamic>))
        .toList();
  }
}
