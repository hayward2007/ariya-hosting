import 'package:ariya/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizResult extends StatelessWidget {
  final int point;

  const QuizResult({
    super.key,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AriyaColor.grayscale200,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/quiz/dart.png', width: 280),
            const SizedBox(height: 24),
            const Text(
              '최고예요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 28,
                fontFamily: 'SUITE',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.56,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: point.toString(),
                    style: const TextStyle(
                      color: Color(0xFF8C59CE),
                      fontSize: 52,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -1.04,
                    ),
                  ),
                  const TextSpan(
                    text: '원',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 40,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.80,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff363636),
                    surfaceTintColor: const Color(0xff363636),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '다음 단계',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.60,
                    ),
                  ),
                )),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => Get.back(),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: GestureDetector(
                  child: const Text(
                    '홈으로',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'SUITE',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.60,
                    ),
                  ),
                  onTap: () => Get.offAllNamed('/home'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
