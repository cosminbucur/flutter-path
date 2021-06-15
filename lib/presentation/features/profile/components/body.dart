import 'package:flutter/material.dart';
import 'package:flutterpath/constants/assets_path.dart';

import 'profile_menu_item.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20),
        ProfileMenuItem(
          text: "My Account",
          icon: Assets.icons + "user.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Notifications",
          icon: Assets.icons + "bell.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Settings",
          icon: Assets.icons + "settings.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Help Center",
          icon: Assets.icons + "question_mark.svg",
          press: () {},
        ),
        ProfileMenuItem(
          text: "Sign Out",
          icon: Assets.icons + "sign_out.svg",
          press: () {},
        ),
      ],
    );
  }
}
