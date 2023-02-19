import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/roundedicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  const CustomAppBar({super.key, required this.rating});

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.getScreenHeight(10), vertical: AppDimensions.getScreenHeight(10)),
        child: Row(
          children: [
            RoundedIcon(
              press: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/icons/Back ICon.svg",
                height: AppDimensions.getScreenWidth(18),
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppDimensions.getScreenWidth(15), vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: TextStyle(
                      fontSize: AppDimensions.getScreenWidth(20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
