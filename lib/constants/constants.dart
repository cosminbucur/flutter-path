/* This is where all our application constants will be present and this is 
different for each application.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const TextStyle kBodyText =
    TextStyle(fontSize: 22, color: Colors.white, height: 1.5);

const Color kWhite = Colors.white;
const Color kBlue = Color(0xff5663ff);

const kPrimaryDarkColor = Colors.white;
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [Color(0), Color(0)],
);
const kSecondaryColor = Colors.teal;
const kTextColor = Colors.teal;

const kAnimationDuration = Duration(milliseconds: 200);

// const headingStyle = TextStyle(
//                     color: Colors.white,
//                     fontSize: SizeConfig.getProportionateScreenHeight(28),
//                     fontWeight: FontWeight.bold,
//                     height: 1.5,
//                   )

// form error
final RegExp emailValidatorRegExp = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter a valid email";

const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Please is too short";
const String kMatchPassError = "Passwords don't match";

const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
