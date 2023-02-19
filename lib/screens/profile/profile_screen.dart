import 'package:e_commerce/common/enum.dart';
import 'package:e_commerce/screens/profile/components/body.dart';
import 'package:e_commerce/screens/profile/components/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const BodyProfileScreen(),
      bottomNavigationBar: const CustomBottomBar(selectedMenu: MenuState.profile,),
    );
  }
}
