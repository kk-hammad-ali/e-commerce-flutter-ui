import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/splash/component/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {

    bool isintilaized = false;
    if(isintilaized == true){
      return const Text('Done');
    }
    AppDimensions.mediaQueryData = MediaQuery.of(context);
    return const Scaffold(
      body: BodySplashScreen(),
    );
  }
}
