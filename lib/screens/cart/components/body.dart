import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/screens/cart/components/cart_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyCartScreen extends StatefulWidget {
  const BodyCartScreen({super.key});

  @override
  State<BodyCartScreen> createState() => _BodyCartScreenState();
}

class _BodyCartScreenState extends State<BodyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.getScreenHeight(30),
        horizontal: AppDimensions.getScreenWidth(20)
      ),
      child: ListView.builder(
        itemCount: demoCartsData.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: AppDimensions.getScreenWidth(10)),
          child: Dismissible(
            onDismissed: (direction){
              setState(() {
                demoCartsData.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getScreenWidth(20)),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E6),
                  borderRadius:
                      BorderRadius.circular(AppDimensions.getScreenHeight(15))),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg")
                ],
              ),
            ),
            key: Key(demoCartsData[0].product.id.toString()),
            direction: DismissDirection.endToStart,
            child: CartItemCard(
              cart: demoCartsData[index],
            ),
          ),
        ),
      ),
    );
  }
}
