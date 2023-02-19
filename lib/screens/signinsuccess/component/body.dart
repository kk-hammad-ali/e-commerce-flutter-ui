import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class BodySigninSuccess extends StatelessWidget {
  const BodySigninSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppDimensions.screenHeight * 0.05,
        ),
        Image.asset(
          "assets/images/success.png",
          height: AppDimensions.screenHeight * 0.4,
        ),
        Text(
          'Login Successful',
          style: TextStyle(
            fontSize: AppDimensions.getScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.getScreenWidth(40)),
          child: SizedBox(
            height: AppDimensions.getScreenHeight(60),
            child: ButtonDefault(text: 'Back to home', press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            }),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
