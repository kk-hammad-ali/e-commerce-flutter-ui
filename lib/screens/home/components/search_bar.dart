import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.screenWidth * 0.6,
      height: AppDimensions.getScreenHeight(50),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Products",
            prefixIcon: const Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getScreenWidth(20),
              vertical: AppDimensions.getScreenHeight(10),
            ),
          ),
        ),
      ),
    );
  }
}
