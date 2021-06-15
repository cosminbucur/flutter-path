import 'package:flutter/material.dart';
import 'package:flutterpath/constants/assets_path.dart';
import 'package:flutterpath/presentation/features/sign-in/components/social_card.dart';
import 'package:flutterpath/presentation/features/sign-up/components/sign_up_form.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig sizeConfig = SizeConfig(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.getProportionateScreenHeight(28),
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: Assets.icons + "google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: Assets.icons + "facebook-2.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.getProportionateScreenHeight(20),
                ),
                Text(
                  "By continuing, you confirm that you agree \nwith our Terms and Conditions",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
