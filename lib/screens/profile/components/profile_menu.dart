
import 'package:e_commerce/common/constanat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  final String  imgPath;
  final String text;
  final void Function()? press;

  const ProfileMenu({
    super.key, required this.imgPath, required this.text, this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: const Color(0xFFF5F6F9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              imgPath,
              width: 25,
              color: kPrimaryColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}
