import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/screens/cart/components/body.dart';
import 'package:e_commerce/screens/cart/components/checkout_cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const BodyCartScreen(),
      bottomNavigationBar: const CheckoutCart(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: AppDimensions.getScreenWidth(20)),
          ),
          Text(
            '${demoCartsData.length} Items',
            style: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
