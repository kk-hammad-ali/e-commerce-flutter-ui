import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:e_commerce/component/form_errors.dart';
import 'package:e_commerce/component/svg_suffix_icon.dart';
import 'package:e_commerce/screens/completeprofile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String confirmpassword;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailField(),
          SizedBox(height: AppDimensions.getScreenHeight(25)),
          passwordField(),
          SizedBox(height: AppDimensions.getScreenHeight(25)),
          conformPasswordField(),
          FromErrors(errors: errors),
          SizedBox(height: AppDimensions.getScreenHeight(15)),
          ButtonDefault(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField conformPasswordField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmpassword = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirmpassword) {
          removeError(error: kMatchPassError);
        }
        confirmpassword = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
          labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(22)),
          hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField passwordField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
          labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(22)),
          hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        email = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(22)),
        hintText: "Enter your email",
        hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
