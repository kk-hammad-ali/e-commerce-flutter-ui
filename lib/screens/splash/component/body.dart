import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:e_commerce/screens/signin/signin_screen.dart';
import 'package:e_commerce/screens/splash/component/splashcontent.dart';
import 'package:flutter/material.dart';

class BodySplashScreen extends StatefulWidget {
  const BodySplashScreen({super.key});

  @override
  State<BodySplashScreen> createState() => _BodySplashScreenState();
}

class _BodySplashScreenState extends State<BodySplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "text": "Welcome to E-Shop! Let's Begin",
        "image": "assets/images/splash_1.png",
      },
      {
        "text": "We help people conect with store \naround Pakistan",
        "image": "assets/images/splash_2.png",
      },
      {
        "text": "We show the easy way to shop. \nJust stay at home with us",
        "image": "assets/images/splash_3.png",
      },
    ];

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"]!,
                  image: splashData[index]["image"]!,
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.getScreenWidth(30),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.getScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.getScreenHeight(100),
                    ),
                    ButtonDefault(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.getScreenHeight(20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
