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
    SizeConfig sizeConfig = SizeConfig(context);
    return Column(
      children: List.generate(
        errors.length,
        (index) => _formErrorText(
          error: errors[index],
          sizeConfig: sizeConfig,
        ),
      ),
    );
  }

  Row _formErrorText({required String error, required SizeConfig sizeConfig}) {
    return Row(
      children: [
        Icon(Icons.error),
        SizedBox(width: sizeConfig.getProportionateScreenWidth(10)),
        Text(error),
      ],
    );
  }
}
