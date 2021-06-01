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
      Colors.white,
    ],
    title: "Wireless Controller for PS4",
    price: 64.99,
    description: "Some description",
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
      Colors.white,
    ],
    title: "TV set",
    price: 50.5,
    description: "Some description",
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
      Colors.white,
    ],
    title: "Remote control",
    price: 23.5,
    description: "Some description",
    rating: 3.2,
    isPopular: true,
  ),
];
