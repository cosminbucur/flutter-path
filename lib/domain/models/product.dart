import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable(explicitToJson: true)
class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  @ColorConverter()
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

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String colorCode) {
    return new Color(int.parse(colorCode));
  }

  @override
  String toJson(Color color) => color.value.toString();
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
