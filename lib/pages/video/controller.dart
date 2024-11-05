import 'package:ariya/pages/video/widgets/quiz_result.dart';
import 'package:ariya/pages/video/widgets/select_quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:ariya/pages/video/widgets/ox_quiz.dart';
import 'package:ariya/widgets/button_controller.dart';

class VideoPageController extends GetxController with ButtonController {
  int index = 0;

  VideoPageController(int index) {
    this.index = index;
  }

  static VideoPageController get to => Get.find<VideoPageController>();
  static final List<List<Widget>> _quiz_list = [
    [
      SelectQuiz(
        question: "두 명의 사람이 사과를 먹고 싶은데,\n남은 사과가 하나 밖에 없습니다.\n사과의 가격은 어떻게 변할까요?",
        answer: 1,
        choice: const ["올라간다", "내려간다"],
        image: [
          SvgPicture.asset('assets/images/quiz/up.svg', height: 76, width: 76),
          SvgPicture.asset('assets/images/quiz/down.svg', height: 76, width: 76),
        ],
      ),
      SelectQuiz(
        question: "당신은 안전한 투자를 중요하게 생각\n하는 투자자입니다. 다음 중 어떤 투자\n포트폴리오를 구성해야할까요?",
        answer: 2,
        choice: const ["주식:채권 = 7:3", "주식:채권 = 3:7"],
        image: [
          SvgPicture.asset('assets/images/quiz/seven_to_three.svg', height: 76, width: 76),
          SvgPicture.asset('assets/images/quiz/three_to_seven.svg', height: 76, width: 76),
        ],
      ),
      SelectQuiz(
        question: "당신은 고위험, 고수익 투자를\n지향하는 투자자입니다.\n둘 중 어떤 상품을 매수해야 할까요?",
        answer: 1,
        choice: const ["주식", "채권"],
        image: [
          Image.asset('assets/images/quiz/stock.png', height: 76, width: 76),
          Image.asset('assets/images/quiz/bond.png', height: 76, width: 76),
        ],
      ),
      OxQuiz(question: "보통의 경우,\n채권이 주식보다\n변동성이 크다.", answer: 'X'),
      OxQuiz(question: "채권의 수익은\n'이자'라는 형태로\n발생한다.", answer: 'O'),
      OxQuiz(question: "주식과 채권은 모두\n투자 상품이다.\n", answer: 'O'),
      OxQuiz(question: "‘채권 매수'란,\n회사에 돈을\n빌려주는 것을 말한다.", answer: 'O'),
      OxQuiz(question: "‘주식’은\n회사의 소유권을\n나타낸다.", answer: 'O'),
    ],
    [
      SelectQuiz(
        question: "한국의 대표적인 지수는 KOSPI에요.\n그리고 일본의 재표적인 주가지수는\n[    ] 입니다",
        answer: 1,
        choice: const ["닛케이", "다우존스"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      SelectQuiz(
        question: "코스피 혹은 코스닥시장에 처음\n상장하는 것을 [   ]라고 해요.(영어)",
        answer: 1,
        choice: const ["IPO", "ICO"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      SelectQuiz(
        question: "달래는 반도체를 제조하는 회사를 만들어\n시가총액 ５조원 가치의 회사를 만들었다.\n어디에 상장하는 것이 좋을까?",
        answer: 1,
        choice: const ["KOSPI", "KOSDAQ"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      OxQuiz(question: "코스피에 상장하기위해 최소 필요한\n자기자본금은 300억이다.", answer: 'O'),
      SelectQuiz(
        question: "달래는 AI를 기반으로 혁신적인 스타트업\n'아리야'를 만들어 500억원의 기업가치를 인정 받았다. 어디에 상장하는 것이 좋을까?",
        answer: 2,
        choice: const ["KOSPI", "KOSDAQ"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      SelectQuiz(
        question: "미국 벤처기업의 나타내는 대표적인 지수는 무엇일까?",
        answer: 2,
        choice: const ["SP500", "NASDAQ"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
    ],
    [
      SelectQuiz(
        question: "주식시장이 급격하게 떨어질 때 잠시 30분정도 거래를 강제로 금지하는 걸 [   ]라고 해요",
        answer: 2,
        choice: const ["등골브레이커", "서킷브레이커"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      OxQuiz(question: '공매도는 주식이 움직이지 않으면 돈을 벌어요', answer: 'X'),
      SelectQuiz(
        question: "달래는 뉴스에서 “형석전자의 공장에서 대규모 불량품이 발생하였다”라는 뉴스를 보았다. 이때 달래가 취할 적절한 행동은?",
        answer: 1,
        choice: const ["형석전자의 주식을 공매도", "형석전자의 채권을 매수"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      SelectQuiz(
        question: "달래는 형석전자의 주식을 공매도하였다. 그런데 형석전자의 주가가 다시 급등할 때 달래가 볼 수 있는 손실은?",
        answer: 1,
        choice: const ["무한대", "공매도한 만큼"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      OxQuiz(question: "코스피에 상장하기위해 최소 필요한\n자기자본금은 300억이다.", answer: 'O'),
      SelectQuiz(
        question: "달래는 공매도가 시장에 어떤 영향을 미치는지 궁금합니다. 다음중 공매도가 시장에 미치는 영향으로 옳은 것은?",
        answer: 1,
        choice: const ["주가의 과도한 상승을 막고 거품을 방지할 수 있다", "주식 배당률이 높아져요"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
      SelectQuiz(
        question: "최근 경제상황이 불안해지면서 달래 나라 정부는 공매도를 금지했습니다. 왜 공매도를 금지할 가능성이 클까요?",
        answer: 1,
        choice: const ["시장이 불안해 할까봐요", "공매도가 투자자에게 손해를 보장해서에요"],
        image: const [
          SizedBox(),
          SizedBox(),
        ],
      ),
    ],
  ];

  static const int maxScore = 100;

  final RxInt _quizIndex = 0.obs;
  // final RxBool _isQuizTime = false.obs;
  final RxString _quizAnswer = ''.obs;
  final Rx<bool?> _quizStatus = Rx(null);
  late Rx<Widget> quiz = _quiz_list[index][0].obs;
  final RxDouble _process = 0.0.obs;
  final RxBool isVideoDown = false.obs;
  final RxDouble _score = 0.0.obs;

  String get quizAnswer => _quizAnswer.value;
  // bool get isQuizTime => _isQuizTime.value;
  bool get isQuizSolved => _quizStatus.value != null;
  bool get isQuizCorrect => _quizStatus.value == true;
  bool get isQuizInCorrect => _quizStatus.value == false;
  get process => _process.value;

  set quizAnswer(String value) => _quizAnswer.value = value;

  // void startQuiz() => _isQuizTime.value = true;
  void _refreshQuiz() {
    _quizStatus.value = null;
    _quizAnswer.value = '';
  }

  void answerQuiz(String answer, String key) {
    _quizStatus.value = answer == key;
    _quizAnswer.value = key;
    Timer(const Duration(seconds: 2), () {
      if (_quizStatus.value ?? false) {
        _score.value += (maxScore / _quiz_list[index].length);
      }

      _refreshQuiz();
      _quizIndex.value++;
      _process.value += (1 / _quiz_list[index].length);
      
      if (_quizIndex.value >= _quiz_list[index].length) {
        Get.offAll(QuizResult(point: _score.value.toInt()));
        return;
      }
      quiz.value = _quiz_list[index][_quizIndex.value];
      Get.put(VideoPageController(index));
    });
  }
}
