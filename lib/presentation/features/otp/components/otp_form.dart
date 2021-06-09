import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/presentation/widgets/default_button.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class OtpForm extends StatefulWidget {
  OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);

    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: sizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  // extract to constants
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: sizeConfig.getProportionateScreenWidth(15)),
                    enabledBorder: _outlineInputBorder(),
                    focusedBorder: _outlineInputBorder(),
                    border: _outlineInputBorder(),
                  ),
                  onChanged: (value) => {
                    // store value
                    nextField(value: value, focusNode: pin2FocusNode),
                  },
                ),
              ),
              SizedBox(
                width: sizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  // extract to constants
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: sizeConfig.getProportionateScreenWidth(15)),
                    enabledBorder: _outlineInputBorder(),
                    focusedBorder: _outlineInputBorder(),
                    border: _outlineInputBorder(),
                  ),
                  onChanged: (value) =>
                      {nextField(value: value, focusNode: pin3FocusNode)},
                ),
              ),
              SizedBox(
                width: sizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  // extract to constants
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: sizeConfig.getProportionateScreenWidth(15)),
                    enabledBorder: _outlineInputBorder(),
                    focusedBorder: _outlineInputBorder(),
                    border: _outlineInputBorder(),
                  ),
                  onChanged: (value) =>
                      {nextField(value: value, focusNode: pin4FocusNode)},
                ),
              ),
              SizedBox(
                width: sizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  // extract to constants
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: sizeConfig.getProportionateScreenWidth(15)),
                    enabledBorder: _outlineInputBorder(),
                    focusedBorder: _outlineInputBorder(),
                    border: _outlineInputBorder(),
                  ),
                  onChanged: (value) => {pin4FocusNode.unfocus()},
                ),
              ),
            ],
          ),
          SizedBox(height: sizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Continue",
            press: () {
              Navigator.pushNamed(context, AppRoutes.home);
            },
          )
        ],
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kTextColor),
    );
  }
}
