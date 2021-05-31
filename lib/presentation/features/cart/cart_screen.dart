import 'package:flutter/material.dart';
import 'package:flutterpath/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.cart_text.tr()),
      ),
      body: Container(
        child: Row(
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
                child: Text('Romanian'))
          ],
        ),
      ),
    );
  }
}
