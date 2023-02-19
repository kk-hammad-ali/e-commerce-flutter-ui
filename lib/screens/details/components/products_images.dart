
import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: AppDimensions.getScreenHeight(400),
          child: AspectRatio(
            aspectRatio: 2,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.product.images.length, (index) => smallPreviews(index))
          ],
        )
      ],
    );
  }

  GestureDetector smallPreviews(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: AppDimensions.getScreenHeight(18)),
        padding: EdgeInsets.all(AppDimensions.getScreenHeight(15)),
        height: AppDimensions.getScreenHeight(60),
        width: AppDimensions.getScreenHeight(60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: selectedImage == index ? kPrimaryColor : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
