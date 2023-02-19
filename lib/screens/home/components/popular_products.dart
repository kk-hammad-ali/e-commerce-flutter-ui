import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/product_card.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/screens/details/product_details_screen.dart';
import 'package:e_commerce/screens/home/components/titles.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitles(title: 'Popular Products', press: () {}),
        SizedBox(height: AppDimensions.getScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoProducts.length,
              (index) => ProductCard(
                product: demoProducts[index],
                press: () {
                  Navigator.pushNamed(
                    context,
                    ProductDetailsScreen.routeName,
                    arguments: ProductDetailsArugment(
                      product: demoProducts[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
