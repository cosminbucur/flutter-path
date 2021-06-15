import 'package:flutter/material.dart';
import 'package:flutterpath/constants/constants.dart';
import 'package:flutterpath/domain/models/product.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: SizeConfig.getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => _buildSmallPreview(index),
            ),
          ],
        ),
      ],
    );
  }

  GestureDetector _buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin:
            EdgeInsets.only(right: SizeConfig.getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(SizeConfig.getProportionateScreenHeight(8)),
        height: SizeConfig.getProportionateScreenWidth(48),
        width: SizeConfig.getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
