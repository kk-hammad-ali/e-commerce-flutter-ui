import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimensions.getScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.getScreenWidth(40),
        vertical: AppDimensions.getScreenWidth(20),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20)),
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'A Summer Surprise\n',
              style: TextStyle(color: Colors.white, fontSize: 17),
              children: [
                TextSpan(
                    text: 'Cashback 20%',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
