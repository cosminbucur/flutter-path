import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpath/domain/models/product.dart';
import 'package:http/http.dart' as http;

class HttpDetailsScreen extends StatefulWidget {
  const HttpDetailsScreen({Key? key}) : super(key: key);

  @override
  _HttpDetailsScreenState createState() => _HttpDetailsScreenState();
}

class _HttpDetailsScreenState extends State<HttpDetailsScreen> {
  late Future<Product> futureProduct;
  late Future<List<Product>> futureProducts;

  @override
  void initState() async {
    super.initState();
    futureProduct = _fetchProduct();
    futureProducts = _fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http CRUD'),
      ),
      body: Center(
        child: FutureBuilder<Product>(
          future: futureProduct,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Text(snapshot.data!.title),
                  Text(snapshot.data!.description),
                  Column(
                    children: [
                      ...List.generate(
                        snapshot.data!.images.length,
                        (index) =>
                            Text(snapshot.data!.images[index].toString()),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        snapshot.data!.colors.length,
                        (index) =>
                            Text(snapshot.data!.colors[index].toString()),
                      ),
                    ],
                  ),
                  Text(snapshot.data!.rating.toString()),
                  Text(snapshot.data!.price.toString()),
                  Text(snapshot.data!.isFavorite.toString()),
                  Text(snapshot.data!.isPopular.toString()),
                ],
              );
            } else if (snapshot.hasError) {
              return Text("$snapshot.error");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Product> _fetchProduct() async {
  final response =
      await http.get(Uri.parse('http://localhost:3000/products/1'));

  if (response.statusCode == 200) {
    // If server response 200 OK, parse the JSON
    return Product.fromJson(jsonDecode(response.body));
  } else {
    // else throw an exception
    throw Exception('Failed to load poduct');
  }
}

Future<List<Product>> _fetchProducts() async {
  final response = await http.get(Uri.parse('http://localhost:3000/products'));

  if (response.statusCode == 200) {
    var productsJson = jsonDecode(response.body) as List;
    List<Product> products = productsJson
        .map((productJson) => Product.fromJson(productJson))
        .toList();

    return products;
  } else {
    throw Exception('Failed to load poducts');
  }
}
