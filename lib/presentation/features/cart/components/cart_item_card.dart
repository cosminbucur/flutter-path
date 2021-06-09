import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/domain/models/cartItem.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Row(
      children: [
        SizedBox(
          width: sizeConfig.getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cartItem.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: sizeConfig.getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cartItem.product.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cartItem.product.price}",
                style: TextStyle(color: kPrimaryColor),
                children: [
                  TextSpan(
                    text: " x${cartItem.numOfItems}",
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
