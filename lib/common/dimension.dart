import 'package:flutter/material.dart';

class AppDimensions {
  static late MediaQueryData mediaQueryData;
  static final double screenWidth = mediaQueryData.size.width;
  static final double screenHeight = mediaQueryData.size.height;
  

  static double getScreenHeight(double inputHeight) {
    double x = AppDimensions.screenHeight / inputHeight;
    return AppDimensions.screenHeight / x;
  }
  static double getScreenWidth(double inputWidth) {
    double x = AppDimensions.screenWidth / inputWidth;
    return AppDimensions.screenWidth / x;
  }
}
