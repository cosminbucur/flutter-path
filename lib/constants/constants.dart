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
