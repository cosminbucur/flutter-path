import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildFirstNameFormField(),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          _buildLastNameFormField(),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          _buildPhoneNumberFormField(),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          _buildAddressFormField(),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: sizeConfig.getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                // GO TO OTP
                // Navigator.pushNamed(context, AppRoutes.completeProfile);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _buildFirstNameFormField() {
    SizeConfig sizeConfig = SizeConfig(context);
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.account_circle)),
      ),
    );
  }

  TextFormField _buildLastNameFormField() {
    SizeConfig sizeConfig = SizeConfig(context);
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.account_circle)),
      ),
    );
  }

  TextFormField _buildPhoneNumberFormField() {
    SizeConfig sizeConfig = SizeConfig(context);
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.location_city)),
      ),
    );
  }

  TextFormField _buildAddressFormField() {
    SizeConfig sizeConfig = SizeConfig(context);
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
              sizeConfig.getProportionateScreenWidth(20),
            ),
            child: Icon(Icons.account_circle)),
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
