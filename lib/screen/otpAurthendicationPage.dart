import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/ClourButton.dart';
import '../Widgets/otp_pin_box.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  bool loading = true;
  bool resendOtpLoading = false;
  StreamSubscription? subscription;
  int timer = 60;
  String otp = '';
  TextEditingController otpController = TextEditingController();
  final otpFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
        title: '',
        func: () {},
        color: Constants.balckcolor,
        bgColor: Constants.bacgroundcolor,
      ),
      backgroundColor: Constants.bacgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Verify it’s you",
                style: TextStyle(
                  color: Constants.redColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "We send a code to ( *****@mail.com ). Enter it here to verify your identity",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            OtpPinBox(),
            const Center(
              child: Text(
                "Resend Code",
                style: TextStyle(
                  color: Constants.redColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClourButton(
                fnSize: 16,
                height: 50,
                fun: () {},
                btmnText: "Conform",
                textColor: Constants.whitecolor,
                btnColor: Constants.redColor)
          ],
        ),
      ),
    );
  }
}
