import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryCGradientolor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(microseconds: 200);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final headingStyle = TextStyle(
  fontSize: AppDimensions.getScreenWidth(15),
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final decorationOPTForm = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: AppDimensions.getScreenWidth(10)),
  border: borderOPTForm(),
  focusedBorder: borderOPTForm(),
  enabledBorder: borderOPTForm(),
);

OutlineInputBorder borderOPTForm() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppDimensions.getScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
