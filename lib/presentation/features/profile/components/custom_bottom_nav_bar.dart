import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/constants/enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color activeIconColor = Color(0xFF868686);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.home);
              },
              icon: SvgPicture.asset(
                "assets/icons/shop.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : activeIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/heart.svg",
                color: MenuState.favorite == selectedMenu
                    ? kPrimaryColor
                    : activeIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/chat.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : activeIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.profile);
              },
              icon: SvgPicture.asset(
                "assets/icons/user.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : activeIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
