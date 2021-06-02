import 'package:flutter/material.dart';

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
          icon: "assets/icons/user.svg",
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
          text: "Sign Out",
          icon: "assets/icons/sign_out.svg",
          press: () {},
        ),
      ],
    );
  }
}
