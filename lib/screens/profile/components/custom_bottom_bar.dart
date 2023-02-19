import 'package:e_commerce/common/enum.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBar extends StatelessWidget {
  
  final MenuState selectedMenu;
  const CustomBottomBar({
    super.key, required this.selectedMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15)
          )
        ]
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
               Navigator.pushNamed(context, HomeScreen.routeName);
            }, icon: SvgPicture.asset("assets/icons/Shop Icon.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg")),
            IconButton(onPressed: (){
              Navigator.pushNamed(context, ProfileScreen.routeName);
            }, icon: SvgPicture.asset("assets/icons/User Icon.svg")),
          ],
        ),
      ),
    );
  }
}