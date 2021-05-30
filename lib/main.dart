import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/config/themes/dark_theme.dart';

void main() async {
  var delegate = await LocalizationDelegate.create(
      fallbackLocale: 'en_US',
      supportedLocales: [
        'en_US',
        'ro',
      ]);

  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Path',
      theme: darkThemeData(context),
      initialRoute: AppRoutes.splash,
      routes: routes,
    );
  }
}
