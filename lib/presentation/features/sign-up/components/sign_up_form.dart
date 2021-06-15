import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confirmPassword = "";
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailFormField(),
          SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
          _buildPasswordFormField(),
          SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
          _buildConfirmPasswordFormField(),
          SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, AppRoutes.completeProfile);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _buildEmailFormField() {
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
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.email)),
      ),
    );
  }

  TextFormField _buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          _removeError(error: kShortPassError);
        }
        password = value;
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
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.lock)),
      ),
    );
  }

  TextFormField _buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue!,
      onChanged: (value) {
        if (password == confirmPassword) {
          _removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (password != value) {
          _addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
              SizeConfig.getProportionateScreenWidth(20),
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
