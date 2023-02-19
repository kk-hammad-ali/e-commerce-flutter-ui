import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.product,
    required this.color,
    this.isSelected = false,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: AppDimensions.getScreenHeight(10)),
      padding: EdgeInsets.all(AppDimensions.getScreenHeight(8)),
      height: AppDimensions.getScreenHeight(50),
      width: AppDimensions.getScreenHeight(50),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
