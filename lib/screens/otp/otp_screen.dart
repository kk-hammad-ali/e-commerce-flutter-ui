import 'package:flutter/material.dart';

import 'components/body.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OTPScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: const BodyOTPScreen(),
    );
  }
}
