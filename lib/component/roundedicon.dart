import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final Widget child;
  final void Function()? press;

  const RoundedIcon({
    super.key,
    required this.child, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.getScreenWidth(45),
      width: AppDimensions.getScreenWidth(45),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          foregroundColor: kPrimaryColor,
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
        ),
        onPressed: press,
        child: child,
      ),
    );
  }
}