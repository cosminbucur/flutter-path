import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'icon_button_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            icon: Icon(Icons.shopping_basket),
            press: () {
              Navigator.pushNamed(context, AppRoutes.cart);
            },
          ),
          IconButtonWithCounter(
            icon: Icon(Icons.notifications),
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
