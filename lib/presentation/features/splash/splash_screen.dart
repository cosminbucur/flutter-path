import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/splash/components/body.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // you have to call it in your starting screen
    SizeConfig.init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
