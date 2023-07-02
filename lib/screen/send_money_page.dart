import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/enter_amount_container.dart';
import '../Widgets/profile_image.dart';
import '../Widgets/sweiping_button.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "Send Money", func: (){}, color: Constants.redColor, bgColor: Constants.bacgroundcolor),
      backgroundColor: Constants.bacgroundcolor,
      body: Stack(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 10),
                  child: ProfileImage(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "to Linda",
                    style: TextStyle(
                        color: Constants.redColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                EnterAmountDetails(),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: const Swipingbutton(),
          )
        ],
      ),
    );
  }
}
