import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class SectionTitles extends StatelessWidget {
  final String title;
  final void Function()? press;
  const SectionTitles({
    super.key, required this.title, this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.getScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: AppDimensions.getScreenWidth(20), color: Colors.black),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'See More',
              style: TextStyle(
                  fontSize: AppDimensions.getScreenWidth(20), color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
