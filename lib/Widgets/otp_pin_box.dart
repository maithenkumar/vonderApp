
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPinBox extends StatefulWidget {
  const OtpPinBox({super.key});

  @override
  State<OtpPinBox> createState() => _OtpPinBoxState();
}

class _OtpPinBoxState extends State<OtpPinBox> {
 

    bool loading = true;
    bool resendOtpLoading = false;
    StreamSubscription? subscription;
    int timer = 60;
    String otp = '';
    TextEditingController otpController = TextEditingController();
    final otpFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: PinCodeTextField(
                            appContext: context,
                            focusNode: otpFocusNode,
                            autoFocus: true,
                            controller: otpController,
                            length: 4,
                            obscureText: false,
                            animationType: AnimationType.scale,
                            animationDuration: const Duration(milliseconds: 200),
                            enableActiveFill: true,
                            onCompleted: (v) {},
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            textInputAction: TextInputAction.done,
                            cursorColor: Colors.black,
                            showCursor: true,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                              fontSize: 24,
                            ),
                            pinTheme: PinTheme(
                              activeFillColor: Constants.whitecolor,
                              
                              shape: PinCodeFieldShape.box,
                              fieldHeight: 50,
                              fieldWidth: Get.width / 5 - 10,
                              inactiveFillColor:Constants.whitecolor,
                              activeColor: Colors.white,
                              inactiveColor: Constants.whitecolor,
                              selectedColor: Constants.whitecolor,
                              selectedFillColor: Constants.whitecolor,
                              disabledColor: Constants.whitecolor,
                              
                              borderWidth: 0.1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onChanged: (value) async {
                              setState(() {
                                otp = value;
                              });
                              if (value.length == 4) {
                                // submitOtp(value);
                              }
                            },
                            enablePinAutofill: false,
                          ),
    );
   
  }
}