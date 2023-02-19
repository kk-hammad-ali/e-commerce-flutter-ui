import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ",
            style: TextStyle(
              fontSize: AppDimensions.getScreenWidth(16),
            ),
          ),
          Text(
            "Sign Up",
            style:
                TextStyle(fontSize: AppDimensions.getScreenWidth(20), color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
