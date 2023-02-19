import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/home/components/categories_icons.dart';
import 'package:e_commerce/screens/home/components/discount_container.dart';
import 'package:e_commerce/screens/home/components/home_header.dart';
import 'package:e_commerce/screens/home/components/popular_products.dart';
import 'package:e_commerce/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppDimensions.getScreenHeight(10)),
            const HomeHeader(),
            SizedBox(height: AppDimensions.getScreenHeight(30)),
            const DiscountContainer(),
            SizedBox(height: AppDimensions.getScreenHeight(30)),
            CategoriesIcons(),
            SizedBox(height: AppDimensions.getScreenHeight(30)),
            const SpecialOffers(),
            SizedBox(height: AppDimensions.getScreenHeight(30)),
            const PopularProducts(),
            SizedBox(height: AppDimensions.getScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
