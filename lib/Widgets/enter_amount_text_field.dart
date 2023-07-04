import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:order_app/Costants/constants.dart';

class EnterAmountTextField extends StatelessWidget {
  const EnterAmountTextField({super.key, required this.controller});
  
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.bacgroundcolor,
      child:  Column(
        children: [
         const  Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Enter the amount you want to withdraw",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Constants.greyColor),
            ),
          ),
           TextField(
            controller: controller,
            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
            style: const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400)

          ,
            textAlign: TextAlign.center,
            decoration:const  InputDecoration(
              
                // focusColor: Constants.greyColor
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 193, 200, 207),
                        width: 1)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Constants.greyColor)),
                hintText: "65.00",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
