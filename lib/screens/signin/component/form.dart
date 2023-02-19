import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/svg_suffix_icon.dart';
import 'package:e_commerce/component/form_errors.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:e_commerce/screens/forgetpassword/forget_password_screen.dart';
import 'package:e_commerce/screens/signinsuccess/signin_success_screen.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email;
  late String password;
  bool remember = false;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (!errors.contains(error)) {
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
          SizedBox(
            height: AppDimensions.getScreenHeight(20),
          ),
          emailField(),
          SizedBox(
            height: AppDimensions.getScreenHeight(20),
          ),
          passwordField(),
          SizedBox(
            height: AppDimensions.getScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text(
                'Remember me',
                style: TextStyle(
                  fontSize: AppDimensions.getScreenWidth(17),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgetPasswordScreen.routeName),
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: AppDimensions.getScreenWidth(18),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: AppDimensions.getScreenHeight(20),
          ),
          FromErrors(errors: errors),
          SizedBox(
            height: AppDimensions.getScreenHeight(30),
          ),
          ButtonDefault(
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, SigninSuccessFulScreen.routeName);
              }
            },
            text: "Continue",
          ),
        ],
      ),
    );
  }

  TextFormField passwordField() {
    return TextFormField(
      onSaved: ((newValue) => password = newValue!),
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
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(22)),
        hintText: "Enter your password",
        hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField emailField() {
    return TextFormField(
      onSaved: ((newValue) => email = newValue!),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kEmailNullError)) {
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
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(22)),
          hintText: "Enter your email",
          hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Mail.svg")),
    );
  }
}
