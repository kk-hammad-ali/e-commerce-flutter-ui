
import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDescription extends StatelessWidget {
  final void Function()? press;
   final ProductModel product;
   
  const ProductDescription({
    super.key,
    required this.product, this.press,
  });

 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.getScreenHeight(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: AppDimensions.getScreenHeight(5),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(AppDimensions.getScreenHeight(15)),
            width: AppDimensions.getScreenHeight(60),
            decoration: BoxDecoration(
                color: product.isFavourite
                    ? const Color(0xFFFFE6E6)
                    : const Color(0xFFF5F6F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: product.isFavourite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: AppDimensions.getScreenHeight(20), right: AppDimensions.getScreenHeight(70)),
          child: Text(
            overflow: TextOverflow.ellipsis,
            product.description,
            maxLines: 3,
            style: TextStyle(fontSize: AppDimensions.getScreenHeight(18)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getScreenHeight(20), vertical: AppDimensions.getScreenHeight(15)),
          child: GestureDetector(
            onTap: press,
            child: Row(
              children: [
                Text(
                  'See More Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                    fontSize: AppDimensions.getScreenHeight(18),
                  ),
                ),
                SizedBox(width: AppDimensions.getScreenHeight(15),),
                Icon(
                  Icons.arrow_forward,
                  size: AppDimensions.getScreenHeight(15),
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

