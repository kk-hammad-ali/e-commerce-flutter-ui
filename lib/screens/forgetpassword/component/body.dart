import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/forgetpassword/component/form.dart';
import 'package:flutter/material.dart';

class BodyForgetPassword extends StatelessWidget {
  const BodyForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.getScreenWidth(30),
          ),
          child: Column(
            children: [
              SizedBox(height: AppDimensions.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: AppDimensions.getScreenWidth(25),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppDimensions.getScreenWidth(18),
                ),
              ),
              SizedBox(
                height: AppDimensions.screenHeight * 0.1,
              ),
              const ForgetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

