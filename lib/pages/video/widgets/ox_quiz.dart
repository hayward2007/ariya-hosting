import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ariya/pages/video/controller.dart';
import 'package:ariya/global.dart';

class OxQuizTitle extends StatelessWidget {
  const OxQuizTitle({super.key, required this.title, required this.question});

  final String title;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.star_rounded, size: 24, color: AriyaColor.purple),
            const SizedBox(width: 4),
            Text(title, style: AriyaFont.description()),
          ],
        ),
        const SizedBox(width: 8),
        Text(question, style: AriyaFont.title()),
      ],
    );
  }
}

class OxQuizButton extends StatelessWidget {
  const OxQuizButton({super.key, required this.image, required this.correctColor, required this.incorrectColor, required this.onPressed});

  final Widget image;
  final Color correctColor;
  final Color incorrectColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => VideoPageController.to.press(key.toString()),
      onTapCancel: () => VideoPageController.to.unpress(),
      onTapUp: (_) {
        VideoPageController.to.unpress();
        onPressed();
      },
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: VideoPageController.to.isQuizCorrect && VideoPageController.to.quizAnswer == (key as ValueKey).value
                ? correctColor
                : VideoPageController.to.isQuizInCorrect && VideoPageController.to.quizAnswer != (key as ValueKey).value
                    ? incorrectColor
                    : VideoPageController.to.isPressed(key.toString())
                        ? AriyaColor.grayscale400
                        : AriyaColor.grayscale200,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: image,
        ),
      ),
    );
  }
}

class OxQuiz extends StatelessWidget {
  OxQuiz({Key? key, required this.question, required this.answer}) : super(key: key ?? ValueKey(question));

  static const String _title = "OX 퀴즈";

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(question),
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          OxQuizTitle(title: _title, question: question),
          const SizedBox(height: 60),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: OxQuizButton(
                  key: const ValueKey("O"),
                  image: Obx(
                    () => SvgPicture.asset(
                      'assets/images/quiz/O.svg',
                      width: 100,
                      height: 100,
                      color: VideoPageController.to.isQuizCorrect && VideoPageController.to.quizAnswer == "O" || VideoPageController.to.isQuizInCorrect && VideoPageController.to.quizAnswer != "O"
                          ? AriyaColor.white
                          : AriyaColor.red,
                    ),
                  ),
                  correctColor: AriyaColor.purple,
                  incorrectColor: AriyaColor.red,
                  onPressed: () {
                    if (!VideoPageController.to.isQuizSolved) VideoPageController.to.answerQuiz(answer, "O");
                  },
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: OxQuizButton(
                  key: const Key("X"),
                  image: Obx(
                    () => Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/quiz/X.svg',
                        width: 85.06,
                        height: 85.05,
                        color: VideoPageController.to.isQuizCorrect && VideoPageController.to.quizAnswer == "X" || VideoPageController.to.isQuizInCorrect && VideoPageController.to.quizAnswer != "X"
                            ? AriyaColor.white
                            : AriyaColor.blue,
                      ),
                    ),
                  ),
                  correctColor: AriyaColor.purple,
                  incorrectColor: AriyaColor.red,
                  onPressed: () {
                    if (!VideoPageController.to.isQuizSolved) VideoPageController.to.answerQuiz(answer, "X");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
