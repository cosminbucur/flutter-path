import 'package:flutter/material.dart';
import 'package:flutterpath/constants/enums.dart';
import 'package:flutterpath/presentation/features/profile/components/custom_bottom_nav_bar.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO remove this
    SizeConfig.init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
