import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Constants.whitecolor,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          color: Constants.balckcolor,
          width: 2,
        ),
      ),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
         
            color: Constants.greyColor,
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
