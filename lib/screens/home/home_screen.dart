import 'package:e_commerce/common/enum.dart';
import 'package:e_commerce/screens/home/components/body.dart';
import 'package:e_commerce/screens/profile/components/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyHomeScreen(),
      bottomNavigationBar: CustomBottomBar(selectedMenu: MenuState.home),
    );
  }
}