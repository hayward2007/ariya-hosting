import 'package:get/get.dart';

import 'package:ariya/pages/rank/controller.dart';

class RankPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RankPageController());
  }
}
