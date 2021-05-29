import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: Color(0xfff5f5f5),
      accentColor: Color(0xff40bf7a),
      textTheme: TextTheme(
          headline6: TextStyle(color: Colors.black54),
          subtitle2: TextStyle(color: Colors.grey),
          subtitle1: TextStyle(color: Colors.white)),
      appBarTheme: AppBarTheme(
          color: Color(0xff1f655d),
          actionsIconTheme: IconThemeData(color: Colors.white)));
}
