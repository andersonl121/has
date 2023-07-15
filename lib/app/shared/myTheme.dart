import 'dart:ui';
import 'package:flutter/material.dart';

class MyTheme {
  static Map<int, Color> colorCodes = {
    50: Color.fromRGBO(26, 178, 224, .1),
    100: Color.fromRGBO(26, 178, 224, .2),
    200: Color.fromRGBO(26, 178, 224, .3),
    300: Color.fromRGBO(26, 178, 224, .4),
    400: Color.fromRGBO(26, 178, 224, .5),
    500: Color.fromRGBO(26, 178, 224, .6),
    600: Color.fromRGBO(26, 178, 224, .7),
    700: Color.fromRGBO(26, 178, 224, .8),
    800: Color.fromRGBO(26, 178, 224, .9),
    900: Color.fromRGBO(26, 178, 224, 1),
  };

  static MaterialColor color = new MaterialColor(0xFF1AB2E0, colorCodes);

  static Color? buttonColor = Colors.amber[600];

  static ThemeData tema = new ThemeData(
      buttonTheme: new ButtonThemeData(buttonColor: buttonColor),
      primarySwatch: color);

  static const Color greyText = Color.fromRGBO(70, 70, 70, 1);
  final Color _blueTextA = Color.fromRGBO(26, 178, 224, 1);
  final Color _blueTextB = Color.fromRGBO(17, 70, 237, 1);
  final Color _whiteText = Color.fromRGBO(255, 255, 255, 1);

  ThemeData getTheme() {
    return tema;
  }

  Color getGreyTextColor() {
    return greyText;
  }

  Color getBlueTextAColor() {
    return _blueTextA;
  }

  Color getBlueTextBColor() {
    return _blueTextB;
  }

  Color getWhiteTextColor() {
    return _whiteText;
  }
}
