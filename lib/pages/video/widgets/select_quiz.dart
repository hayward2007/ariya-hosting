import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ariya/pages/video/controller.dart';
import 'package:ariya/global.dart';

class SelectQuizTitle extends StatelessWidget {
  const SelectQuizTitle({super.key, required this.title, required this.question});

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

class SelectQuizButton extends StatelessWidget {
  const SelectQuizButton({super.key, required this.image, required this.choice});

  final Widget image;
  final String choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => VideoPageController.to.press((key as ValueKey).value),
      onTapCancel: () => VideoPageController.to.unpress(),
      onTapUp: (_) {
        if (VideoPageController.to.isPressed(VideoPageController.to.quizAnswer)) {
          VideoPageController.to.quizAnswer = '';
          VideoPageController.to.unpress();
        } else {
          VideoPageController.to.quizAnswer = (key as ValueKey).value.toString();
        }
      },
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: VideoPageController.to.isPressed((key as ValueKey).value) ? AriyaColor.grayscale200 : AriyaColor.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: VideoPageController.to.isQuizCorrect && VideoPageController.to.quizAnswer == (key as ValueKey).value.toString()
                  ? AriyaColor.blue
                  : VideoPageController.to.isQuizInCorrect && VideoPageController.to.quizAnswer != (key as ValueKey).value.toString()
                      ? AriyaColor.red
                      : AriyaColor.grayscale300,
              width: 4,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image,
              const SizedBox(height: 12),
              Text(choice, style: AriyaFont.custom(22, AriyaWeight.regular, AriyaColor.black, spacing: -0.3)),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectQuiz extends StatelessWidget {
  SelectQuiz({Key? key, required this.question, required this.answer, required this.choice, required this.image}) : super(key: key ?? ValueKey(question));

  static const String _title = "2지선다";

  final String question;
  final int answer;
  final List<String> choice;
  final List<Widget> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(question),
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          SelectQuizTitle(title: _title, question: question),
          const SizedBox(height: 24),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: SelectQuizButton(key: const ValueKey("1"), image: image[0], choice: choice[0]),
                ),
                const SizedBox(height: 24),
                Flexible(
                  child: SelectQuizButton(key: const Key("2"), image: image[1], choice: choice[1]),
                ),
                const SizedBox(height: 24),
                Obx(
                  () => VideoPageController.to.isQuizSolved
                      ? const SizedBox(height: 56)
                      : GestureDetector(
                          onTapDown: (_) => VideoPageController.to.press("next"),
                          onTapCancel: () => VideoPageController.to.unpress(),
                          onTapUp: (_) {
                            if (VideoPageController.to.quizAnswer.isEmpty) return;
                            VideoPageController.to.answerQuiz(answer.toString(), VideoPageController.to.quizAnswer);
                          },
                          child: Container(
                            height: 56,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: VideoPageController.to.quizAnswer.isNotEmpty
                                  ? VideoPageController.to.isPressed("next")
                                      ? AriyaColor.grayscale400
                                      : AriyaColor.grayscale300
                                  : AriyaColor.grayscale200,
                            ),
                            child: Text(
                              "확인",
                              style: AriyaFont.description(
                                color: VideoPageController.to.quizAnswer.isEmpty ? AriyaColor.grayscale400 : AriyaColor.grayscale800,
                              ),
                            ),
                          ),
                        ),
                ),
                const SizedBox(height: 24),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
