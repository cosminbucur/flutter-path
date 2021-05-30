import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    required this.sizeConfig,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final SizeConfig sizeConfig;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: sizeConfig.getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryDarkColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: press,
        child: Text(
          "Continue",
          style: TextStyle(
              fontSize: sizeConfig.getProportionateScreenHeight(18),
              color: Colors.white),
        ),
      ),
    );
  }
}
