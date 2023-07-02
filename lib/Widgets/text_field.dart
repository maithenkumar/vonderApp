import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:order_app/Costants/constants.dart';

class TextFIeldWithCircele extends StatefulWidget {
  const TextFIeldWithCircele({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<TextFIeldWithCircele> createState() => _TextFIeldWithCirceleState();
}

class _TextFIeldWithCirceleState extends State<TextFIeldWithCircele> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Constants.whitecolor,
            borderRadius: BorderRadius.circular(25)),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: "Scarch",
              helperStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Constants.greencolor,
              ),
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              prefixIcon: const Padding(
                padding:  EdgeInsets.only(left: 20, right: 10),
                child:  Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              fillColor: Constants.whitecolor,
              enabledBorder: InputBorder.none,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide())),
        ),
      ),
    );
  }
}
