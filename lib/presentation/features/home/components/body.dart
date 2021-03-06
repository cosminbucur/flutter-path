import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/home/components/categories.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: SizeConfig.getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: SizeConfig.getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: SizeConfig.getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: SizeConfig.getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: SizeConfig.getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
