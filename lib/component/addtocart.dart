import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:flutter/material.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
       left: AppDimensions.screenWidth * 0.10,
       right: AppDimensions.screenWidth * 0.10,
       top: AppDimensions.getScreenWidth(15),
       bottom: AppDimensions.getScreenWidth(130),
      ),
      child: ButtonDefault(text: 'Add to Cart', press: (){},),
    );
  }
}
