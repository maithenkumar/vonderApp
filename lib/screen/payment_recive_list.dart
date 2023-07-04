import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class PaymentRecivedList extends StatefulWidget {
  const PaymentRecivedList({super.key});

  @override
  State<PaymentRecivedList> createState() => _PaymentRecivedListState();
}

class _PaymentRecivedListState extends State<PaymentRecivedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Constants.balckcolor),
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  Icons.arrow_outward_sharp,
                  color: Constants.whitecolor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        "Recived from",
                        style: TextStyle(
                            color: Constants.whitecolor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "Sutharson Thambi",
                        style: TextStyle(
                            color: Color.fromARGB(197, 243, 235, 235),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Text(
                "\u{20B9}1",
                style: TextStyle(
                  color: Constants.whitecolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "27 jan 2023",
                  style: TextStyle(
                      color: Constants.greyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "Credited",
                    style: TextStyle(
                        color: Constants.whitecolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Constants.whitecolor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.credit_score_outlined,
                      color: Constants.pinkcolor,
                    ))
              ],
            ),
          ),Divider(
            color: Constants.greyColor,
            thickness: 0.5,

          )
        ],
      ),
    );
  }
}
