import 'package:flutter/material.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';
import 'package:flutterpath/constants/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig(context);
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: sizeConfig.getProportionateScreenHeight(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: sizeConfig.getProportionateScreenHeight(265),
          width: sizeConfig.getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
