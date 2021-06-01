import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpath/domain/models/Product.dart';
import 'package:flutterpath/presentation/widgets/widgets.dart';

import 'components/body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // default appbar not enough space
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconButton(
                iconData: Icons.arrow_back_ios,
                press: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Row(
                  children: [
                    Text(
                      arguments.product.rating.toString(),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset("assets/icons/star.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Body(product: arguments.product),
    );
  }
}

// class CustomAppBar extends PreferredSize {
//   CustomAppBar() : super();

//   @override
//   // AppBar().preferredSize.height provide us the height that app for our appbar
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return super.build(context);
//   }
// }

// pass product to route
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);
}
