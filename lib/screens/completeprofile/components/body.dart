import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/completeprofile/components/form.dart';
import 'package:flutter/material.dart';

class BodyCompleteProfileScreen extends StatelessWidget {
  const BodyCompleteProfileScreen({super.key});

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
                  "Complete Profile",
                  style: TextStyle(
                    fontSize: AppDimensions.getScreenWidth(25),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Complete your details or continue  \nwith social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppDimensions.getScreenWidth(20)),
                ),
                SizedBox(height: AppDimensions.getScreenHeight(25)),
                const CompleteProfileForm(),
                SizedBox(height: AppDimensions.getScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
