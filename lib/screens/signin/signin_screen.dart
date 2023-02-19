import 'package:e_commerce/screens/signin/component/body.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = "/signin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        centerTitle: true,
      ),
      body: const BodySignInScreen(),
    );
  }
}