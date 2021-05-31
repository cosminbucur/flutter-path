import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style:
              TextStyle(fontSize: sizeConfig.getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AppRoutes.signUp2),
          child: Text(
            "Sign up",
            style: TextStyle(
                fontSize: sizeConfig.getProportionateScreenWidth(16),
                color: kPrimaryDarkColor),
          ),
        ),
      ],
    );
  }
}
