import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  const RoundedContainer({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppDimensions.getScreenHeight(20)),
      padding: EdgeInsets.only(top: AppDimensions.getScreenHeight(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
