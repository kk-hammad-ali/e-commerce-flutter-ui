import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/noaccounttext.dart';
import 'package:e_commerce/component/socialcards.dart';
import 'package:e_commerce/screens/signin/component/form.dart';
import 'package:flutter/material.dart';

class BodySignInScreen extends StatelessWidget {
  const BodySignInScreen({super.key});

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
                SizedBox(height: AppDimensions.screenHeight * 0.02),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimensions.getScreenWidth(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  style: TextStyle(
                    fontSize: AppDimensions.getScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppDimensions.getScreenHeight(20)),
                const SignInForm(),
                SizedBox(height: AppDimensions.getScreenHeight(30)),
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
                SizedBox(height: AppDimensions.getScreenHeight(20)),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
