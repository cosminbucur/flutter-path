import 'package:flutter/material.dart';

class SizeConfig {
  late final MediaQueryData _mediaQueryData;
  late final double screenWidth;
  late final double screenHeight;
  late final double defaultSize;
  late final Orientation orientation;

  SizeConfig(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  // get the proportionate height as per screen size
  double getProportionateScreenHeight(double inputHeight) {
    // 812 is the layout height that designer use
    return (inputHeight / 812.0) * screenHeight;
  }

  // get the proportionate width as per screen size
  double getProportionateScreenWidth(double inputWidth) {
    // 375 is the layout width that designer use
    return (inputWidth / 375.0) * screenWidth;
  }
}
