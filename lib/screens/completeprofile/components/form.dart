import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:e_commerce/component/form_errors.dart';
import 'package:e_commerce/component/svg_suffix_icon.dart';
import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

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
          firstNameField(),
          SizedBox(height: AppDimensions.getScreenHeight(15)),
          lastNameField(),
          SizedBox(height: AppDimensions.getScreenHeight(15)),
          buildPhoneNumberFormField(),
          SizedBox(height: AppDimensions.getScreenHeight(15)),
          addressField(),
          FromErrors(errors: errors),
          SizedBox(height: AppDimensions.getScreenHeight(25)),
          ButtonDefault(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField addressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        address = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        phoneNumber = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField lastNameField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField firstNameField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        firstName = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        hintStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        labelStyle: TextStyle(fontSize: AppDimensions.getScreenWidth(17)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const SVGSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
