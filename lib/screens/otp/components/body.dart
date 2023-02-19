import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

import 'form.dart';

class BodyOTPScreen extends StatelessWidget {
  const BodyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: AppDimensions.getScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppDimensions.getScreenHeight(20),),
              Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: AppDimensions.getScreenWidth(25),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: AppDimensions.getScreenWidth(20),
              ),
              Text(
                "We sent your code to +1 898 860 ***",
                style: TextStyle(fontSize: AppDimensions.getScreenWidth(18)),
              ),
              buildTimer(),
              const OTPForm(),
              SizedBox(height: AppDimensions.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: AppDimensions.getScreenWidth(20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This code will expired in ",
          style: TextStyle(
            fontSize: AppDimensions.getScreenWidth(20),
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: AppDimensions.getScreenWidth(20),
            ),
          ),
        ),
      ],
    );
  }
}
