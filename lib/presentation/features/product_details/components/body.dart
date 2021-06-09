import 'package:flutter/material.dart';
import 'package:flutterpath/domain/models/product.dart';
import 'package:flutterpath/presentation/widgets/default_button.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.grey,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: sizeConfig.screenWidth * 0.15,
                            right: sizeConfig.screenWidth * 0.15,
                            top: sizeConfig.getProportionateScreenWidth(15),
                            bottom: sizeConfig.getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
