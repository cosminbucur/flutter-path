import 'package:flutter/material.dart';

class ProductReviewScreen extends StatefulWidget {
  ProductReviewScreen({Key? key}) : super(key: key);

  @override
  _ProductReviewScreenState createState() => _ProductReviewScreenState();
}

class _ProductReviewScreenState extends State<ProductReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Review'),
      ),
      body: Container(
        child: Text('Product Review'),
      ),
    );
  }
}
