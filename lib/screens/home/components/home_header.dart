import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/cart/cart_Screen.dart';
import 'package:e_commerce/screens/home/components/counter_button.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: AppDimensions.getScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchBar(),
          CounterButton(
            iconPath: 'assets/icons/Bell.svg',
            notificatonCount: 4,
            press: () {},
          ),
          CounterButton(
            iconPath: 'assets/icons/Cart Icon.svg',
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
