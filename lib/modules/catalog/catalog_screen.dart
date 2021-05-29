import 'package:flutter/material.dart';
import 'package:flutterpath/constants/app_constants.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: kWhite,
          ),
        ),
        title: Text(
          'Items',
          style: kBodyText,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
