import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/domain/models/product.dart';
import 'package:flutterpath/presentation/features/product_details/product_details_screen.dart';
import 'package:flutterpath/utils/helpers/size_config.dart';
import 'package:http/http.dart' as http;

import 'product_card.dart';
import 'section_tile.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = _fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: SizeConfig.getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: FutureBuilder<List<Product>>(
            future: futureProducts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Row(
                  children: [
                    ...List.generate(
                      snapshot.data!.length,
                      (index) {
                        if (snapshot.data![index].isPopular) {
                          return ProductCard(
                            product: snapshot.data![index],
                            press: () => {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.productDetails,
                                arguments: ProductDetailsArguments(
                                  snapshot.data![index],
                                ),
                              ),
                            },
                          );
                        }
                        return SizedBox.shrink();
                      },
                    ),
                    SizedBox(width: SizeConfig.getProportionateScreenWidth(20)),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("$snapshot.error");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ],
    );
  }

  Future<List<Product>> _fetchProducts() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/products'));

    if (response.statusCode == 200) {
      var productsJson = jsonDecode(response.body) as List;
      List<Product> products = productsJson
          .map((productJson) => Product.fromJson(productJson))
          .toList();

      return products;
    } else {
      throw Exception('Failed to load poduct');
    }
  }
}
