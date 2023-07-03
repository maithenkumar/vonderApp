import 'package:flutter/material.dart';

import '../Costants/constants.dart';
class ReceiptText extends StatelessWidget {
  const ReceiptText({super.key, required this.firtsText, required this.secondText, required this.firstColor, required this.secondColor});
final String firtsText;

final String secondText;
final Color firstColor;
final Color secondColor;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
      children: [
        Text(
         firtsText,
          style: TextStyle(
              color: firstColor,
              fontSize: 17,
              fontWeight: FontWeight.w700),
        ),
        Spacer(),
        Text(
          secondText,
          style: TextStyle(
              color: secondColor,
              fontSize: 15,
              fontWeight: FontWeight.w700),
        )
      ],
      ),
    );
  }
}