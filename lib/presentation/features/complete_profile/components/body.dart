import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/complete_profile/components/complete_profile_form.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
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
                  "Complete Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.getProportionateScreenHeight(28),
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
                Text(
                  "Complete your details",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                CompleteProfileForm(),
                SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
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
