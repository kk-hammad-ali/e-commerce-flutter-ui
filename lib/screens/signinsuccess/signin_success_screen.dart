import 'package:e_commerce/screens/signinsuccess/component/body.dart';
import 'package:flutter/material.dart';

class SigninSuccessFulScreen extends StatelessWidget {
  const SigninSuccessFulScreen({super.key});

  static String routeName = "/loginsucessfull";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signin Success'),
        centerTitle: true,
      ),
      body: const BodySigninSuccess(),
    );
  }
}