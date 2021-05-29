import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: Color(0xFF4CAF50),
      accentColor: Color(0xff40bf7a),
      textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      appBarTheme: AppBarTheme(color: Color(0xff1f655d)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData());
}
