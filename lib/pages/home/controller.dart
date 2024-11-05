import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find<HomePageController>();

  final cards = [['주식으로\n부자 되는 법', '투자의\n귀재가 되는 법', '투자의\nn가지 비밀'], ['주식으로\n부자 되는 법', '채권이 뭐야?', '투자의\n귀재가 되는 법', '투자의\nn가지 비밀']];
  final isOpened = [true, false, false, false].obs;
}
