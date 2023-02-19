import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text, image;

  const SplashContent({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppDimensions.getScreenHeight(50),),
        Text(
          "E-SHOP",
          style: TextStyle(
            fontSize: AppDimensions.getScreenWidth(30),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: AppDimensions.getScreenWidth(30),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppDimensions.getScreenWidth(22),
          ),
        ),
        SizedBox(
          height: AppDimensions.getScreenWidth(30),
        ),
        Image.asset(
          image,
          width: AppDimensions.getScreenWidth(250),
          height: AppDimensions.getScreenHeight(300),
        ),
      ],
    );
  }
}
