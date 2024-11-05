import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ariya/pages/home/controller.dart';
import 'package:ariya/global.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 68,
                height: 68,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.notifications_rounded,
                    size: 30,
                    color: Color.fromRGBO(166, 166, 166, 1),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  )
                ],
              ),
            ]),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('단단무지', style: AriyaFont.custom(24, AriyaWeight.semiBold, Colors.black)),
                      Text('님, 오늘도 파이팅!', style: AriyaFont.custom(20, AriyaWeight.regular, Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999),
                      color: const Color.fromRGBO(245, 245, 245, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 12),
                            Text('총 자산', style: AriyaFont.homeTitle(color: AriyaColor.black)),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(999),
                            color: const Color.fromRGBO(54, 54, 54, 1),
                          ),
                          child: Text('879,108원', style: AriyaFont.homeTitle()),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 11),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/rank');
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        color: const Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 12),
                              Text('학교 랭킹', style: AriyaFont.homeTitle(color: AriyaColor.black)),
                              const SizedBox(width: 6),
                              Container(
                                height: 26,
                                alignment: Alignment.bottomCenter,
                                child: const Text('눌러서 자세히 보기', style: TextStyle(fontSize: 12, color: Color.fromARGB(100, 0, 0, 0), fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              color: const Color.fromRGBO(54, 54, 54, 1),
                            ),
                            child: Text('6위', style: AriyaFont.homeTitle()),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 6,
              width: double.infinity,
              color: const Color.fromRGBO(235, 235, 235, 1),
            ),
            const SizedBox(height: 24),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Obx(() => AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(140, 89, 206, 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('주식과 투자', style: AriyaFont.homeTitle()),
                                GestureDetector(
                                  onTap: () => HomePageController.to.isOpened[0] = !HomePageController.to.isOpened[0],
                                  child: SvgPicture.asset(HomePageController.to.isOpened[0] == true ? 'assets/icons/up_purple.svg' : 'assets/icons/down.svg', width: 28, height: 28),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text('62% 진행됨', style: AriyaFont.custom(16, AriyaWeight.regular, const Color.fromRGBO(255, 255, 255, 0.7))),
                            const SizedBox(
                              height: 12,
                            ),
                            LinearPercentIndicator(
                              animation: true,
                              lineHeight: 3.0,
                              animationDuration: 1000,
                              percent: 0.6,
                              barRadius: const Radius.circular(99),
                              progressColor: Colors.white,
                              backgroundColor: const Color.fromRGBO(156, 112, 213, 1),
                            )
                          ]),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        (HomePageController.to.isOpened[0])
                            ? CarouselSlider(
                                items: HomePageController.to.cards[0].asMap().entries.map(
                                  (entry) {
                                    int index = entry.key;
                                    String value = entry.value;
                                    return GestureDetector(
                                      child: Container(
                                        height: 200,
                                        width: 300,
                                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(156, 112, 213, 1),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              value,
                                              style: const TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'SUITE', fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Get.toNamed('/video${index + 1}');
                                      },
                                    );
                                  },
                                ).toList(),
                                options: CarouselOptions(
                                  autoPlay: false,
                                  enlargeCenterPage: true,
                                  viewportFraction: 0.7,
                                  aspectRatio: 2.0,
                                  initialPage: 2,
                                ),
                              )
                            : const SizedBox(height: 0),
                        (HomePageController.to.isOpened[0]) ? const SizedBox(height: 24) : const SizedBox(height: 0),
                      ],
                    )))),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Obx(
                () => AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(241, 127, 245, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('대출과 금리', style: AriyaFont.homeTitle()),
                                GestureDetector(
                                  onTap: () {
                                    HomePageController.to.isOpened[1] = !HomePageController.to.isOpened[1];
                                  },
                                  child: SvgPicture.asset(HomePageController.to.isOpened[1] == true ? 'assets/icons/up.svg' : 'assets/icons/down.svg', width: 28, height: 28),
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text('32% 진행됨', style: AriyaFont.custom(16, AriyaWeight.regular, const Color.fromRGBO(255, 255, 255, 0.7))),
                            const SizedBox(height: 12),
                            LinearPercentIndicator(
                              animation: true,
                              lineHeight: 3.0,
                              animationDuration: 1000,
                              percent: 0.32,
                              barRadius: const Radius.circular(99),
                              progressColor: Colors.white,
                              backgroundColor: const Color.fromRGBO(244, 153, 247, 1),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      (HomePageController.to.isOpened[1])
                          ? CarouselSlider(
                              items: HomePageController.to.cards[1]
                                  .map(
                                    (c) => GestureDetector(
                                      onTap: () {
                                        print('tapped');
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 300,
                                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(244, 153, 247, 1),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              c,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SUITE',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              options: CarouselOptions(
                                autoPlay: false,
                                enlargeCenterPage: true,
                                viewportFraction: 0.7,
                                aspectRatio: 2.0,
                                initialPage: 2,
                              ),
                            )
                          : const SizedBox(height: 0),
                      (HomePageController.to.isOpened[1]) ? const SizedBox(height: 24) : const SizedBox(height: 0),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(190, 240, 34, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('신용과 리스크 관리', style: AriyaFont.homeTitle(color: AriyaColor.black)),
                              SvgPicture.asset('assets/icons/down_black.svg', width: 28, height: 28),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text('아직 준비중이에요!', style: AriyaFont.custom(16, AriyaWeight.regular, AriyaColor.grayscale800))
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(254, 211, 70, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('저출과 지출', style: AriyaFont.homeTitle(color: AriyaColor.black)),
                              SvgPicture.asset('assets/icons/down_black.svg', width: 28, height: 28),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text('아직 준비중이에요!', style: AriyaFont.custom(16, AriyaWeight.regular, AriyaColor.grayscale800))
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      // bottomNavigationBar: const CustomNavigationBar(initialIndex: 0),
    );
  }
}
