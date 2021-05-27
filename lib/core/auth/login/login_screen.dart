import 'package:flutter/material.dart';
import 'package:flutterpath/constants/app_constants.dart';
import 'package:flutterpath/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'images/login_bg.jpeg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'Awesome',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFieldInput(
                    icon: Icons.account_box,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordFieldInput(
                    icon: Icons.lock,
                    hint: 'Password',
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(buttonName: 'Login'),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'Register'),
                child: Container(
                  child: Text(
                    'Create New Account',
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
