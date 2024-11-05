import 'package:get/get.dart';

mixin ButtonController {
  final RxString _pressedButton = "".obs;

  void press(String button) => _pressedButton.value = button;

  void unpress() => _pressedButton.value = "";

  bool isPressed(String button) => _pressedButton.value == button;
}
