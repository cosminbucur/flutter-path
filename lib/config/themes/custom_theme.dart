import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: TextTheme(
      bodyText2: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 60,
        color: Colors.yellowAccent,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}
