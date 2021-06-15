import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'sign_in_form.dart';
import 'social_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.getProportionateScreenHeight(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social meida",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
                SignInForm(),
                SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                  ],
                ),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
