
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';
import '../Widgets/ClourButton.dart';
import '../Widgets/cheak_mail_baox.dart';

class VerirfyYourOtp extends StatefulWidget {
  const VerirfyYourOtp({super.key});

  @override
  State<VerirfyYourOtp> createState() => _VerirfyYourOtpState();
}

class _VerirfyYourOtpState extends State<VerirfyYourOtp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "", func: (){}, color: Constants.balckcolor, bgColor: Constants.bacgroundcolor),
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
                "Verify your identity",
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
                "Where would you like MahaBhojanam to send your security code?",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
         const  CheakMailBox(),
        const  Spacer(),
            
ClourButton(fnSize: 16, height: 50, fun: (){}, btmnText: "Confirm", textColor: Constants.whitecolor, btnColor: Constants.redColor)
          ],
        ),
      ),
    );
  }
}
