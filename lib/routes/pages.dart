import 'package:get/get.dart';

import 'package:ariya/pages/invest/binding.dart';
import 'package:ariya/pages/video/binding.dart';
import 'package:ariya/pages/rank/binding.dart';
import 'package:ariya/pages/home/binding.dart';
import 'package:ariya/pages/invest/page.dart';
import 'package:ariya/pages/video/page.dart';
import 'package:ariya/pages/rank/page.dart';
import 'package:ariya/pages/home/page.dart';
import 'package:ariya/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomePageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.RANK,
      page: () => RankPage(),
      binding: RankPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.INVEST,
      page: () => InvestPage(),
      binding: InvestPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.VIDEO1,
      page: () => VideoPage(),
      binding: VideoPageBinding(0),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.VIDEO2,
      page: () => VideoPage(),
      binding: VideoPageBinding(1),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.VIDEO3,
      page: () => VideoPage(),
      binding: VideoPageBinding(2),
      transition: Transition.noTransition,
    ),
  ];
}
