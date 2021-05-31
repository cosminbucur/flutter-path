import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/sign-in/components/body.dart';

class SignIn2Screen extends StatelessWidget {
  const SignIn2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: Body(),
    );
  }
}
