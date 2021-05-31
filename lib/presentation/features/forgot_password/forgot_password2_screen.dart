import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPassword2Screen extends StatelessWidget {
  const ForgotPassword2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
