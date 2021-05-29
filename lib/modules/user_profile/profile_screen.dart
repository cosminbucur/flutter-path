import 'package:flutter/material.dart';
import 'package:flutterpath/widgets/rounded_button.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      body: Stack(children: [
        RoundedButton(buttonName: 'Log out'),
      ]),
    );
  }
}
