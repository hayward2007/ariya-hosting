import 'package:get/get.dart';

import 'package:ariya/pages/video/controller.dart';

class VideoPageBinding implements Bindings {
  int index;
  
  VideoPageBinding(int index) : this.index = index;

  @override
  void dependencies() {
    Get.put(VideoPageController(this.index));
  }
}
