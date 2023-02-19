import 'package:e_commerce/screens/cart/cart_Screen.dart';
import 'package:e_commerce/screens/completeprofile/complete_profile_screen.dart';
import 'package:e_commerce/screens/details/product_details_screen.dart';
import 'package:e_commerce/screens/forgetpassword/forget_password_screen.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/screens/signin/signin_screen.dart';
import 'package:e_commerce/screens/signinsuccess/signin_success_screen.dart';
import 'package:e_commerce/screens/signup/signup_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => const SplashScreen(),
  SignInScreen.routeName : (context) => const SignInScreen(),
  ForgetPasswordScreen.routeName : (context) => const ForgetPasswordScreen(),
  SigninSuccessFulScreen.routeName : (context) => const SigninSuccessFulScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  SignUpScreen.routeName : (context) => const SignUpScreen(),
  OTPScreen.routeName : (context) => const OTPScreen(),
  HomeScreen.routeName : (context) => const HomeScreen(),
  ProductDetailsScreen.routeName : (context) => const ProductDetailsScreen(),
  CartScreen.routeName : (context) => const CartScreen(),
  ProfileScreen.routeName : (context) => const ProfileScreen(),
};