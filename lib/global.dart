import 'package:flutter/material.dart';

class AriyaColor {
  static const Color red = Color.fromRGBO(235, 98, 107, 1);
  static const Color blue = Color.fromRGBO(20, 114, 236, 1);
  static const Color purple = Color.fromRGBO(140, 89, 206, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color grayscale100 = Color.fromRGBO(245, 245, 245, 1);
  static const Color grayscale200 = Color.fromRGBO(235, 235, 235, 1);
  static const Color grayscale300 = Color.fromRGBO(219, 219, 219, 1);
  static const Color grayscale400 = Color.fromRGBO(184, 184, 184, 1);
  static const Color grayscale800 = Color.fromRGBO(79, 79, 79, 1);
}

class AriyaWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight heavy = FontWeight.w900;
}

class AriyaFont {
  static const _fontFamily = "SUITE";
  static TextStyle _defaultStyle(
    double size,
    FontWeight weight,
    Color color, {
    double spacing = 0,
  }) =>
      TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: _fontFamily,
        letterSpacing: spacing,
      );

  static TextStyle custom(
    double size,
    FontWeight weight,
    Color color, {
    double spacing = 0,
  }) =>
      _defaultStyle(
        size,
        weight,
        color,
        spacing: spacing,
      );

  static TextStyle description({
    double size = 20,
    FontWeight weight = AriyaWeight.bold,
    Color color = AriyaColor.purple,
    double spacing = -0.03,
  }) =>
      _defaultStyle(
        size,
        weight,
        color,
        spacing: spacing,
      );

  static TextStyle title({
    double size = 28,
    FontWeight weight = AriyaWeight.semiBold,
    Color color = AriyaColor.black,
    double spacing = -0.02,
  }) =>
      _defaultStyle(
        size,
        weight,
        color,
        spacing: spacing,
      );

  static TextStyle homeTitle({
    double size = 20,
    FontWeight weight = AriyaWeight.semiBold,
    Color color = AriyaColor.white,
  }) =>
      custom(size, weight, color);
}
