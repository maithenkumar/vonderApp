import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

import 'steper.dart';
import 'success_button.dart';

class PaymentMoreDetails extends StatefulWidget {
  const PaymentMoreDetails({super.key, required this.status});

  final int status;

  @override
  State<PaymentMoreDetails> createState() => _PaymentMoreDetailsState();
}

class _PaymentMoreDetailsState extends State<PaymentMoreDetails> {
   bool istab=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Constants.whitecolor,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
            color: Constants.whitecolor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Constants.bacgroundcolor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: istab==false? 0:60),
              child: Row(
                children: [
                  Text(
                    "View more details",
                    style: TextStyle(
                        color: Constants.balckcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      
                      setState(() {
                        istab==false?istab=true:istab=false;
                      });
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_up_outlined,
                      size: 30,
                      color: Constants.balckcolor,
                    ),
                  )
                ],
              ),
            ),
          Visibility(
            visible: istab,
            child: 
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Steper(
                  status: widget.status,
                  color: Constants.greencolor,
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "Payment initiated",
                        style: TextStyle(
                            color: Constants.balckcolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        "Moeny debited from \n your bank",
                        style: TextStyle(
                            color: Constants.balckcolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Money sent to \n recipent'bank ",
                        style: TextStyle(
                            color: Constants.balckcolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Text(
                        "Payment complete",
                        style: TextStyle(
                            color: Constants.balckcolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SuccessFullButton(
                  status: widget.status,
                ),
              ],
            ),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: istab==false? 30:40),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(80, 123, 230, 128)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.verified_outlined,
                        color: Constants.greencolor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "payment status succeses. in case of any issue, you may  contact ypur bank",
                        maxLines: 2,
                        style: TextStyle(),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
