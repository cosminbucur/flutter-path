import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/domain/models/Product.dart';
import 'package:flutterpath/presentation/features/product_details/product_details_screen.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'product_card.dart';
import 'section_tile.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Column(
      children: [
        SectionTile(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: sizeConfig.getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.productDetails,
                          arguments: ProductDetailsArguments(
                            demoProducts[index],
                          ),
                        ),
                      },
                    );
                  }
                  return SizedBox.shrink();
                },
              ),
              SizedBox(width: sizeConfig.getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
