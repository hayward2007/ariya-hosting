import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:ariya/pages/video/controller.dart';
import 'package:ariya/routes/routes.dart';
import 'package:ariya/global.dart';

class VideoPage extends GetView<VideoPageController> {
  const VideoPage({super.key});

  String formatDuration(int totalSeconds) {
    int minutes = totalSeconds ~/ 60; // 분 계산
    int seconds = totalSeconds % 60; // 초 계산
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: 'eny2_ptCP7k',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    var seconds = 0.obs;
    var timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds.value++;
    });

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.HOME),
                    child: const Icon(
                      Icons.close_rounded,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                  Obx(
                    () => LinearPercentIndicator(
                      lineHeight: 8.0,
                      animationDuration: 1000,
                      percent: VideoPageController.to.process,
                      barRadius: const Radius.circular(99),
                      progressColor: const Color.fromRGBO(156, 112, 213, 1),
                      backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
                      width: 220,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF4F4F4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.68),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Obx(
                            () => Text(
                              formatDuration(seconds.value),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 16,
                                fontFamily: 'Spoqa Han Sans Neo',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.48,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Obx(
            () => AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: VideoPageController.to.quiz.value,
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              //숫자 조정 해주세요
              top: VideoPageController.to.isVideoDown.value ? MediaQuery.of(context).size.height - 125 : 0,
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 250),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    SizedBox(
                      height: 75,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => VideoPageController.to.isVideoDown.value = !VideoPageController.to.isVideoDown.value,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(VideoPageController.to.isVideoDown.value ? '영상 다시 보기' : '문제 풀러 가기',
                                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: -0.3, color: AriyaColor.white)),
                              Icon(VideoPageController.to.isVideoDown.value ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded, color: AriyaColor.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 75,
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: YoutubePlayer(
                          controller: controller,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          onEnded: (_) {
                            VideoPageController.to.isVideoDown.value = true;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
