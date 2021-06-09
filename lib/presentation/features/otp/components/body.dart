import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/presentation/features/otp/components/otp_form.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: sizeConfig.screenHeight * 0.05),
                Text(
                  "OTP Verification",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: sizeConfig.getProportionateScreenHeight(28),
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
                Text(
                  "We sent your code to +40 723 187 106",
                  textAlign: TextAlign.center,
                ),
                _buildTimer(),
                SizedBox(height: sizeConfig.screenHeight * 0.15),
                OtpForm(),
                SizedBox(height: sizeConfig.screenHeight * 0.1),
                GestureDetector(
                  onTap: () {
                    // resend OTP
                  },
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:$value",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
