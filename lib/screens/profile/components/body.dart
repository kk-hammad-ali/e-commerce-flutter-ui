import 'package:e_commerce/screens/profile/components/profile_menu.dart';
import 'package:e_commerce/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(imgPath: "assets/icons/User Icon.svg", text: 'My Account', press: (){},),
        ProfileMenu(imgPath: "assets/icons/Bell.svg", text: 'Notification', press: (){},),
        ProfileMenu(imgPath: "assets/icons/Settings.svg", text: 'Settings', press: (){},),
        ProfileMenu(imgPath: "assets/icons/Question mark.svg", text: 'Help Center', press: (){},),
        ProfileMenu(imgPath: "assets/icons/Log out.svg", text: 'Sign Out', press: (){},),
        
      ],
    );
  }
}
