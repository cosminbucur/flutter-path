import 'package:flutter/material.dart';
import 'package:flutterpath/constants/assets_path.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'section_tile.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(height: SizeConfig.getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: "Smartphones",
                image: Assets.images + 'image_banner_2.jpeg',
                numOfBrands: 18,
                press: _toSmartphones,
              ),
              SpecialOfferCard(
                category: "Fashion",
                image: Assets.images + "image_banner_3.jpeg",
                numOfBrands: 24,
                press: _toFashion,
              ),
              SizedBox(height: SizeConfig.getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }

  void _toFashion() {}

  void _toSmartphones() {}
}
