import 'package:flutter/material.dart';

class SizeConfig2 {
  static late final MediaQueryData _mediaQueryData;
  static late final double screenWidth;
  static late final double screenHeight;
  static late final double defaultSize;
  static late final Orientation orientation;

  static init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  // get the proportionate height as per screen size
  static double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = SizeConfig2.screenHeight;
    // 812 is the layout height that designer use
    return (inputHeight / 812.0) * screenHeight;
  }

  // get the proportionate width as per screen size
  static double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = SizeConfig2.screenWidth;
    // 375 is the layout width that designer use
    return (inputWidth / 375.0) * screenWidth;
  }
}
