import 'package:e_commerce/common/constanat.dart';
import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/component/buttondefault.dart';
import 'package:flutter/material.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({
    Key? key,
  }) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: AppDimensions.screenHeight * 0.10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimensions.getScreenWidth(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: AppDimensions.getScreenWidth(50),
                  height: AppDimensions.getScreenHeight(50),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    style: TextStyle(fontSize: AppDimensions.getScreenHeight(18)),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: decorationOPTForm,
                    onChanged: (value) {
                      nextField(value, pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getScreenWidth(50),
                  height: AppDimensions.getScreenHeight(50),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: AppDimensions.getScreenHeight(18)),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: decorationOPTForm,
                    onChanged: (value) => nextField(value, pin3FocusNode),
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getScreenWidth(50),
                  height: AppDimensions.getScreenHeight(50),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    obscureText: true,
                    style:  TextStyle(fontSize: AppDimensions.getScreenHeight(18)),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: decorationOPTForm,
                    onChanged: (value) => nextField(value, pin4FocusNode),
                  ),
                ),
                SizedBox(
                  width: AppDimensions.getScreenWidth(50),
                  height: AppDimensions.getScreenHeight(50),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: AppDimensions.getScreenHeight(18)),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: decorationOPTForm,
                    onChanged: (value) {
                      if (value.length == 1) {
                        pin4FocusNode!.unfocus();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppDimensions.screenHeight * 0.15),
          ButtonDefault(
            text: "Continue",
            press: () {},
          )
        ],
      ),
    );
  }
}
