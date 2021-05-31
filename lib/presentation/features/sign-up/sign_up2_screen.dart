import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUp2Screen extends StatelessWidget {
  const SignUp2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
