import 'package:flutterpath/domain/models/product.dart';

class CartItem {
  final Product product;
  final int numOfItems;

  CartItem({required this.product, required this.numOfItems});
}

// mock data
List<CartItem> demoCarts = [
  CartItem(product: demoProducts[0], numOfItems: 2),
  CartItem(product: demoProducts[1], numOfItems: 1),
  CartItem(product: demoProducts[2], numOfItems: 2),
];
