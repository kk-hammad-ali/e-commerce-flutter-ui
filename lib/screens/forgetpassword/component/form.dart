import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:e_commerce/component/form_errors.dart';
import 'package:e_commerce/component/noaccounttext.dart';
import 'package:e_commerce/component/svg_suffix_icon.dart';
import 'package:e_commerce/screens/signinsuccess/signin_success_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late final String email;

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
          height: AppDimensions.getScreenHeight(40),
        ),
        TextFormField(
          onSaved: ((newValue) => email = newValue!),
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              removeError(error: kEmailNullError);
            } else if (emailValidatorRegExp.hasMatch(value) &&
                errors.contains(kEmailNullError)) {
              removeError(error: kInvalidEmailError);
            }
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
        ),
        SizedBox(
          height: AppDimensions.getScreenHeight(15),
        ),
        FromErrors(
          errors: errors,
        ),
        SizedBox(
          height: AppDimensions.screenHeight * 0.1,
        ),
        ButtonDefault(text: 'Continue', press: () {
          if(_formKey.currentState!.validate()){
            _formKey.currentState!.save();
            Navigator.pushNamed(context, SigninSuccessFulScreen.routeName);
          }
        }),
        SizedBox(
          height: AppDimensions.screenHeight * 0.1,
        ),
        const NoAccountText()
      ],
    ));
  }
}
