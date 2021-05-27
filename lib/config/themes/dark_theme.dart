import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
  ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Color(0xff1f655d),
      accentColor: Color(0xff40bf7a),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xff40bf7a)),
          subtitle2: TextStyle(color: Colors.white),
          subtitle1: TextStyle(color: Color(0xff40bf7a))),
      // textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
      appBarTheme: AppBarTheme(color: Color(0xff1f655d)));

  ThemeData get theme {
    return darkTheme;
  }
}
