import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

import '../Widgets/ClourButton.dart';
import '../Widgets/enter_amount_text_field.dart';

class CashWithdrawalScreen extends StatefulWidget {
  const CashWithdrawalScreen({super.key});

  @override
  State<CashWithdrawalScreen> createState() => _CashWithdrawalScreenState();
}

class _CashWithdrawalScreenState extends State<CashWithdrawalScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Constants.whitecolor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(108, 193, 202, 211),
                      blurRadius: 5,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 1,
                    )
                  ]),
              child: const Row(
                children: [
                  Text(
                    "Current balance",
                    style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "72 999.",
                    style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "00",
                    style: TextStyle(
                      color: Constants.greyColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 10,
            ),
            child: EnterAmountTextField(
              controller: controller,
            ),
          ),
          const Text(
            "Comission 3.25Rs",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Constants.greyColor),
          ),
          const Text(
            "(is constant and amounts to 5%)",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Constants.greyColor),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.info_outline,
                  color: Constants.greyColor,
                  size: 20,
                ),
              ),
              Text(
                "maximum withdrawal amount 10 000Rs",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          ClourButton(
            fnSize: 17,
            height: 60,
            borderRadius: 50,
            fun: () {},
            btmnText: "WITHDRAW 62,25 Rs",
            textColor: Constants.whitecolor,
            btnColor: Constants.redColor,
          )
        ],
      ),
    );
  }
}
