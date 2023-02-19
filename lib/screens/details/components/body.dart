import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/addtocart.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/screens/details/components/color_dots.dart';
import 'package:e_commerce/screens/details/components/products_description.dart';
import 'package:e_commerce/screens/details/components/products_images.dart';
import 'package:e_commerce/screens/details/components/rounded_container.dart';
import 'package:flutter/material.dart';

class BodyProductDetailsScreen extends StatelessWidget {
  final ProductModel product;
  const BodyProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: AppDimensions.getScreenWidth(20),),
          ProductImages(product: product),
          Column(
            children: [
              RoundedContainer(
                color: Colors.white,
                child: ProductDescription(
                  product: product,
                  press: () {},
                ),
              ),
              RoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    const RoundedContainer(color: Colors.white,
                     child:  AddToCard()
                     )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

