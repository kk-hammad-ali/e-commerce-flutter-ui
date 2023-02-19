import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final void Function()? press;

  const ProductCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.getScreenWidth(20),
        vertical: AppDimensions.getScreenWidth(10), 
      ),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: AppDimensions.getScreenWidth(200),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Container(
                  padding: EdgeInsets.all(AppDimensions.getScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    product.images[0],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimensions.getScreenWidth(18)),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                      fontSize: AppDimensions.getScreenWidth(20),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(AppDimensions.getScreenWidth(8)),
                      width: AppDimensions.getScreenWidth(30),
                      height: AppDimensions.getScreenWidth(30),
                      decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kSecondaryColor.withOpacity(0.15)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
