import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutCart extends StatelessWidget {
  const CheckoutCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.getScreenWidth(30),
        vertical: AppDimensions.getScreenWidth(20),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: AppDimensions.getScreenWidth(20),
                color: const Color(0xFFDADADA).withOpacity(0.15))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppDimensions.getScreenWidth(30)),
              topRight: Radius.circular(
                AppDimensions.getScreenWidth(30),
              ))),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(
                    AppDimensions.getScreenWidth(10),
                  ),
                  height: AppDimensions.getScreenWidth(45),
                  width: AppDimensions.getScreenWidth(45),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius:
                        BorderRadius.circular(AppDimensions.getScreenWidth(20)),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                Text(
                  "Add Voucher Code",
                  style: TextStyle(
                    fontSize: AppDimensions.getScreenWidth(16),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: kTextColor,
                  size: AppDimensions.getScreenWidth(20),
                )
              ],
            ),
            SizedBox(height: AppDimensions.getScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    style: TextStyle(
                      fontSize: AppDimensions.getScreenWidth(16),
                    ),
                    children: [
                      TextSpan(
                        text: "\$23.3242",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: AppDimensions.getScreenWidth(18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getScreenWidth(180),
                  child: ButtonDefault(text: "Check Out", press: (){}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
