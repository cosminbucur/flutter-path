import 'package:flutter/material.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return SizedBox(
      height: sizeConfig.getProportionateScreenWidth(40),
      width: sizeConfig.getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: press,
        child: Icon(iconData),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
      ),
    );
  }
}
