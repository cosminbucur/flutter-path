import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: SizeConfig.getProportionateScreenWidth(28),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Please enter your email and we wil send \nyou a link to return to your account",
          textAlign: TextAlign.center,
        ),
        ForgotPasswordForm(),
      ],
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              _buildEmailFormField(),
              SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
              FormError(errors: errors),
              SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    // reset password
                  }
                },
              ),
              SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField _buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.email)),
      ),
    );
  }
}
