import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'profile_menu_item.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20),
        ProfileMenuItem(
          text: "My Account",
          icon: "assets/icons/camera.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Notifications",
          icon: "assets/icons/bell.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Settings",
          icon: "assets/icons/settings.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Help Center",
          icon: "assets/icons/question_mark.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Log Out",
          icon: "assets/icons/log_out.svg",
          press: () {},
        ),
      ],
    );
  }
}
