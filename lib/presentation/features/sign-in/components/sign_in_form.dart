import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class SignInForm extends StatefulWidget {
  SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailFormField(),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          _buildPasswordFormField(),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
                activeColor: kPrimaryColor,
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.forgotPassword2),
                child: Text(
                  "Forgot password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, AppRoutes.loginSuccess);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _buildEmailFormField() {
    SizeConfig sizeConfig = SizeConfig(context);
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          _removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          _addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.email)),
      ),
    );
  }

  TextFormField _buildPasswordFormField() {
    SizeConfig sizeConfig = SizeConfig(context);
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          _removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          _addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.lock)),
      ),
    );
  }

  void _addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void _removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
}
