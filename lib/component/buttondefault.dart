import 'package:e_commerce/common/dimension.dart';
import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  final String text;
  final void Function()? press;
  const ButtonDefault({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppDimensions.getScreenHeight(50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: press,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppDimensions.getScreenWidth(30),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
