import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class PaymentSendedDeatails extends StatelessWidget {
  const PaymentSendedDeatails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Constants.whitecolor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "SENT TO",
              style: TextStyle(
                  color: Constants.greyColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: const CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Color.fromARGB(255, 207, 217, 226),
                  child: Text(
                    "LR",
                    style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 5),
                    child: Text(
                      "LAKSHMANAN R",
                      style: TextStyle(
                          color: Constants.balckcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    "lakshmanan,coder@oksbi",
                    style: TextStyle(
                        color: Constants.greyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "AMOUNT",
                    style: TextStyle(
                        color: Constants.greyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\u{20B9} 400",
                    style: TextStyle(
                        color: Constants.balckcolor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Constants.bacgroundcolor,
                width: 2
              )
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Details",
                  style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Text(
                      "MODE:",
                      style: TextStyle(
                          color: Constants.greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "UPI ID",
                      style: TextStyle(
                          color: Constants.balckcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "SENT FROM :",
                        style: TextStyle(
                            color: Constants.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Spacer(),
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Axis Bank Ltd",
                          style: TextStyle(
                              color: Constants.balckcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "99823****232",
                          style: TextStyle(
                              color: Constants.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                 Row(
                  children: [
                    Text(
                      "REMARK:",
                      style: TextStyle(
                          color: Constants.greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "",
                      style: TextStyle(
                          color: Constants.balckcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
