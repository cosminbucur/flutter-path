import 'package:flutter/material.dart';
import 'package:flutterpath/config/themes/dark_theme.dart';
import 'package:flutterpath/core/auth/forgot_password/forgot_password.dart';
import 'package:flutterpath/core/auth/login/login_screen.dart';
import 'package:flutterpath/core/auth/register/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Path',
      theme: new DarkTheme().theme,
      routes: {
        '/': (context) => LoginScreen(),
        'ForgotPassword': (context) => ForgotPassword(),
        'Register': (context) => Register(),
      },
    );
  }
}
