import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/screens/details/components/body.dart';
import 'package:e_commerce/screens/details/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/productdetail";
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArugment arugment = ModalRoute.of(context)!.settings.arguments as ProductDetailsArugment;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: arugment.product.rating),
      ),
      body: BodyProductDetailsScreen(product: arugment.product,),
    );
  }
} 



class ProductDetailsArugment {
  final ProductModel product;

  ProductDetailsArugment({required this.product});
}
