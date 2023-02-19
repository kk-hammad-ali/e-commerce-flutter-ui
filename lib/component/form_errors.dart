import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/svg_suffix_icon.dart';
import 'package:flutter/material.dart';

class FromErrors extends StatelessWidget {
  const FromErrors({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => fromErrorsText(
          error: errors[index],
        ),
      ),
    );
  }
}

Row fromErrorsText({required String error}) {
  return Row(
    children: [
      const SVGSuffixIcon(svgIcon: "assets/icons/Error.svg",),
      SizedBox(
        width: AppDimensions.getScreenWidth(5),
      ),
      Text(error, style: TextStyle(
        fontSize: AppDimensions.getScreenWidth(16)
      ),),
    ],
  );
}
