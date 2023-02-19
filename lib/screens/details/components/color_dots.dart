import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/roundedicon.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/screens/details/components/color_dot.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.getScreenHeight(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              product: product,
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          const Spacer(),
          RoundedIcon(child: const Icon(Icons.remove), press: (){},),
          SizedBox(width: AppDimensions.getScreenHeight(10),),
          RoundedIcon(child: const Icon(Icons.add), press: (){},)
        ],
      ),
    );
  }
}

