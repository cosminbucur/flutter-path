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
  return GoogleFonts.robotoTextTheme(Theme.of(context).textTheme);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xff1f655d),
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.white),
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
