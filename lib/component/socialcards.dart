import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/svg_suffix_icon.dart';
import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String svgIcon;
  final void Function()? press;
  const SocialCard({
    super.key,
    required this.svgIcon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: AppDimensions.getScreenWidth(10),
        ),
        height: AppDimensions.getScreenWidth(50),
        width: AppDimensions.getScreenWidth(50),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SVGSuffixIcon(svgIcon: svgIcon),
      ),
    );
  }
}
