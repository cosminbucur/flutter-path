import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(
          sizeConfig.getProportionateScreenWidth(12),
        ),
        height: sizeConfig.getProportionateScreenHeight(40),
        width: sizeConfig.getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
