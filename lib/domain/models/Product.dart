import 'dart:convert';

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final double price;
  final bool isFavorite;
  final bool isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavorite = false,
    this.isPopular = false,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    var imagesJson = json['images'];
    var colorsJson = json['colors'];

    List<String> images = List.from(imagesJson);
    List<String> colorsCodes = List.from(colorsJson);
    List<Color> colors =
        colorsCodes.map((colorCode) => _toColor(colorCode)).toList();

    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      images: images,
      colors: colors,
      rating: json['rating'],
      price: json['price'],
      isFavorite: json['isFavorite'],
      isPopular: json['isPopular'],
    );
  }
}

Color _toColor(String colorString) {
  String valueString =
      colorString.split('(0x')[1].split(')')[0]; // kind of hacky..
  int value = int.parse(valueString, radix: 16);
  return new Color(value);
}

// demo products
List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/item_1.jpeg",
      "assets/images/item_2.jpeg",
      "assets/images/item_3.jpeg",
      "assets/images/item_4.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836D88),
      Color(0xFFDECB9C),
      Color(0xFFF6625E),
    ],
    title: "Wireless Controller for PS4",
    price: 64.99,
    description:
        "Latest motion sensing technology--- Improved analog sticks and trigger buttons allow for unparalleled accuracy with every move.",
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/item_1.jpeg",
      "assets/images/item_2.jpeg",
      "assets/images/item_3.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836D88),
      Color(0xFFDECB9C),
      Color(0xFFF6625E),
    ],
    title: "TV set",
    price: 50.5,
    description:
        "Latest motion sensing technology--- Improved analog sticks and trigger buttons allow for unparalleled accuracy with every move.",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/item_1.jpeg",
      "assets/images/item_2.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836D88),
      Color(0xFFDECB9C),
      Color(0xFFF6625E),
    ],
    title: "Remote control",
    price: 23.5,
    description:
        "Latest motion sensing technology--- Improved analog sticks and trigger buttons allow for unparalleled accuracy with every move.",
    rating: 3.2,
    isPopular: true,
  ),
];
