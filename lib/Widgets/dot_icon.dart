import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class DotIcon extends StatelessWidget {
  const DotIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: Constants.greyColor,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}