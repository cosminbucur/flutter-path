import 'package:flutter/material.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: sizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: sizeConfig.getProportionateScreenWidth(18),
                color: Colors.white),
          ),
          GestureDetector(
            onTap: press,
            child: Text("See more"),
          ),
        ],
      ),
    );
  }
}
