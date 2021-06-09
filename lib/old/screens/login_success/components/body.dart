import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/presentation/widgets/default_button.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Column(
      children: [
        SizedBox(height: sizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.jpeg",
          height: sizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: sizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
              fontSize: sizeConfig.getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        Spacer(),
        SizedBox(height: sizeConfig.screenHeight * 0.06),
        DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, AppRoutes.home);
            }),
        Spacer(),
      ],
    );
  }
}
