import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final CartModel cart;
  const CartItemCard({
    super.key, required this.cart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: AppDimensions.getScreenWidth(80),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(AppDimensions.getScreenWidth(10)),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius:
                    BorderRadius.circular(AppDimensions.getScreenWidth(15)),
              ),
              child: Image.asset(
                cart.product.images[0],
              ),
            ),
          ),
        ),
        SizedBox(
          width: AppDimensions.getScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: AppDimensions.getScreenWidth(18),
              ),
              maxLines: 2,
            ),
            SizedBox(
              height: AppDimensions.getScreenWidth(10),
            ),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: " x${cart.noOfItems}",
                    style: const TextStyle(
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
