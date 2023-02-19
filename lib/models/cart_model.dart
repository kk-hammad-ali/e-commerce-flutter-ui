import 'package:e_commerce/models/product_model.dart';

class CartModel {
  final ProductModel product;
  final int noOfItems;

  CartModel({required this.product, required this.noOfItems});
}


List<CartModel> demoCartsData = [
  CartModel(product: demoProducts[0], noOfItems: 2),
  CartModel(product: demoProducts[1], noOfItems: 5),
  CartModel(product: demoProducts[3], noOfItems: 1),
];