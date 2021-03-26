import 'package:flutter/material.dart';

class SizeConfig {
  final MediaQueryData mediaQueryData;

  SizeConfig({this.mediaQueryData});

  static SizeConfig of(BuildContext context) =>
      SizeConfig(mediaQueryData: MediaQuery.of(context));

  double getSize(double size,
      {double scaleFactorTablet, double scaleFactorMini}) {
    if (isTablet()) {
      final scaleFactor = scaleFactorTablet ?? 1.2;
      return size * scaleFactor;
    }

    if (isMini()) {
      final scaleFactor = scaleFactorMini ?? 0.8;
      return size * scaleFactor;
    }

    return size;
  }

  /// Defines device type based on logical device pixels. Bigger than 600 means it is a tablet
  bool isTablet() {
    final shortestSide = mediaQueryData.size.shortestSide;
    return shortestSide > 600;
  }

  /// Defines device type based on logical device pixels. Less or equal than 320 means it is a mini device
  bool isMini() {
    final shortestSide = mediaQueryData.size.shortestSide;
    return shortestSide <= 420;
  }

  double getWidth(double largura, BuildContext context) {
    return MediaQuery.of(context).size.width * largura / 100;
  }

  double getHeight(double altura, BuildContext context) {
    return MediaQuery.of(context).size.height * altura / 100;
  }
}
