import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/domain/models/product.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // hardcoded
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconButton(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(width: SizeConfig.getProportionateScreenWidth(15)),
          RoundedIconButton(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: SizeConfig.getProportionateScreenWidth(40),
      width: SizeConfig.getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
