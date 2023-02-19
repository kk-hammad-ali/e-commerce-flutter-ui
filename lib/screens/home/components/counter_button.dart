import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterButton extends StatelessWidget {
  final void Function()? press;
  final String iconPath;
  final int notificatonCount;
  const CounterButton({
    super.key, this.press, required this.iconPath, this.notificatonCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(AppDimensions.getScreenWidth(10)),
            height: AppDimensions.getScreenWidth(50),
            width: AppDimensions.getScreenWidth(50),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconPath, height: AppDimensions.getScreenWidth(20),),
          ),
          if(notificatonCount !=0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: AppDimensions.getScreenWidth(20),
              width: AppDimensions.getScreenWidth(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: Center(
                child: Text(
                  notificatonCount.toString(),
                  style: TextStyle(
                    fontSize: AppDimensions.getScreenWidth(15),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
