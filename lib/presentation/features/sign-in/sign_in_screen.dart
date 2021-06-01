import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/sign-in/components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
