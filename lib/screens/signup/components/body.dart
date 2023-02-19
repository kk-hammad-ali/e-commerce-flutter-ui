import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/socialcards.dart';
import 'package:flutter/material.dart';

import 'form.dart';

class BodySignUpScreen extends StatelessWidget {
  const BodySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getScreenWidth(30)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Register Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimensions.getScreenWidth(25),
                  ),
                ),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppDimensions.getScreenWidth(18)),
                ),
                SizedBox(height: AppDimensions.getScreenHeight(25)),
                const SignUpForm(),
                SizedBox(height: AppDimensions.getScreenHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      svgIcon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      svgIcon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      svgIcon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: AppDimensions.getScreenHeight(15)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppDimensions.getScreenWidth(16)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
