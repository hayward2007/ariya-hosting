import 'package:get/get.dart';

import 'package:ariya/pages/invest/controller.dart';

class InvestPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InvestPageController());
  }
}
