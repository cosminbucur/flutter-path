import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: Color(0xFF4CAF50),
      accentColor: Color(0xff40bf7a),
      textTheme: textTheme(context),
      appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData());
}

TextTheme textTheme(BuildContext context) {
  // return GoogleFonts.robotoTextTheme(Theme.of(context).textTheme);
  return TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: kWhite),
    headline2: GoogleFonts.roboto(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: kWhite),
    headline3: GoogleFonts.roboto(
        fontSize: 48, fontWeight: FontWeight.w400, color: kWhite),
    headline4: GoogleFonts.roboto(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: kWhite),
    headline5: GoogleFonts.roboto(
        fontSize: 24, fontWeight: FontWeight.w400, color: kWhite),
    headline6: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: kWhite),
    subtitle1: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: kWhite),
    subtitle2: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: kWhite),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: kWhite),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: kWhite),
    button: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: kWhite),
    caption: GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: kWhite),
    overline: GoogleFonts.roboto(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: kWhite),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xff1f655d),
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: kWhite),
    textTheme: TextTheme(
      headline6: TextStyle(color: Colors.grey),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
