import 'package:flutter/material.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => _formErrorText(
          error: errors[index],
        ),
      ),
    );
  }

  Row _formErrorText({required String error}) {
    return Row(
      children: [
        Icon(Icons.error),
        SizedBox(width: SizeConfig.getProportionateScreenWidth(10)),
        Text(error),
      ],
    );
  }
}
