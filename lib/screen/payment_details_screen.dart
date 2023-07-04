import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';
import 'package:order_app/Widgets/payment_mor_details.dart';
import 'package:order_app/Widgets/payment_sended_deatail.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  DateTime now=DateTime.now();
  DateFormat date =DateFormat();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
        fronticon: false,
        title: "",
        func: () {},
        color: Constants.balckcolor,
        bgColor: Constants.bacgroundcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 10),
              child: Text("Payment Successfuly",style: TextStyle(
                color: Constants.balckcolor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                  
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("TRANSACTION ID -2346279364927",style: TextStyle(
                color: Constants.greyColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                  
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30,top: 5),
              child: Text("$now",style: TextStyle(
                color: Constants.greyColor,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                  
              ),),
            ),
         const    PaymentSendedDeatails(),
         PaymentMoreDetails(status: 5,)
      
          ],
        ),
      ),
    );
  }
}
