import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import '../rounded_button.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final String username = 'Cosmin Bucur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
        leading: CircleAvatar(
          radius: 12,
          backgroundImage: AssetImage(''),
        ),
      ),
      body: Stack(
        children: [
          Text(LocaleKeys.cart_text.tr()),
          ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('en'));
              },
              child: Text('English')),
          ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('ro'));
              },
              child: Text('Romanian')),
          RoundedButton(
            buttonName: 'Sign out',
            press: () {
              Navigator.pushNamed(context, AppRoutes.signIn);
            },
          ),
        ],
      ),
    );
  }
}
