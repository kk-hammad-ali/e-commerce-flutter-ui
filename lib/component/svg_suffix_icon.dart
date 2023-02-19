import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGSuffixIcon extends StatelessWidget {
  final String svgIcon;
  const SVGSuffixIcon({
    super.key,
    required this.svgIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppDimensions.getScreenWidth(15), right: AppDimensions.getScreenWidth(15)),
      child: SvgPicture.asset(
        svgIcon,
        height: AppDimensions.getScreenHeight(20),
      ),
    );
  }
}
