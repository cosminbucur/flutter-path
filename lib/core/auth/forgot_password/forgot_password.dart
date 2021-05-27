import 'package:flutter/material.dart';
import 'package:flutterpath/constants/app_constants.dart';
import 'package:flutterpath/widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        BackgroundImage(image: 'images/login_bg.jpeg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: kWhite,
              ),
            ),
            title: Text(
              'Forgot password',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        'Enter your email. We will send instructions to reset your password',
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFieldInput(
                      icon: Icons.email,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonName: 'Send'),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
