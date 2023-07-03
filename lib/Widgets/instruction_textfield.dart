import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class InstructionTextFiled extends StatelessWidget {
  const InstructionTextFiled({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Constants.whitecolor,
            border: Border.all(color: Constants.greyColor, width: 1),
            borderRadius: BorderRadius.circular(25)),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: 'prefer "less spicy"',
              hintStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Constants.balckcolor,
              ),
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Icon(
                  Icons.edit_calendar_outlined,
                  color: Constants.balckcolor,
                  size: 30,
                ),
              ),
              fillColor: Constants.whitecolor,
              disabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Constants.greyColor,
                    width: 1,
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Constants.greyColor,
                    width: 2,
                  ))),
        ),
      ),
    );
  }
}
