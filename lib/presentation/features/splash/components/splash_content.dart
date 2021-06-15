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
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: SizeConfig.getProportionateScreenHeight(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: SizeConfig.getProportionateScreenHeight(265),
          width: SizeConfig.getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
