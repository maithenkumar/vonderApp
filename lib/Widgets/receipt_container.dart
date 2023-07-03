import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/receipt_text.dart';

class ReceiptContainer extends StatefulWidget {
  const ReceiptContainer({super.key});

  @override
  State<ReceiptContainer> createState() => _ReceiptContainerState();
}

class _ReceiptContainerState extends State<ReceiptContainer> {
  bool taxView = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Constants.whitecolor),
      child: Column(
        children: [
          ReceiptText(
            firtsText: "Receipt ",
            secondText: "COD",
            firstColor: Constants.greencolor,
            secondColor: Constants.greencolor,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Constants.greyColor,
            height: 1,
            indent: 10,
            endIndent: 10,
          ),
          ReceiptText(
            firtsText: "Total Price  ",
            secondText: "\u{20B9} 70.00",
            firstColor: Constants.balckcolor,
            secondColor: Constants.balckcolor,
          ),
          ReceiptText(
            firtsText: "Packing Charges ",
            secondText: "FREE",
            firstColor: Constants.greencolor,
            secondColor: Constants.greencolor,
          ),
          ReceiptText(
            firtsText: "Devilier partner free ",
            secondText: "\u{20B9} 39.00",
            firstColor: Constants.balckcolor,
            secondColor: Constants.balckcolor,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Tax",
                  style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      taxView == true ? taxView = false : taxView = true;
                    });
                  },
                  child: Icon(
                    Icons.arrow_drop_up_outlined,
                    color: Constants.balckcolor,
                  ),
                ),
                Spacer(),
                Text(
                  "22",
                  style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        
         Visibility(
          
          visible: taxView,
          child: 
          ReceiptText(
            firtsText: "SGST ",
            secondText: "\u{20B9} 1.45",
            firstColor: Constants.balckcolor,
            secondColor: Constants.balckcolor,
          ),),
          Visibility(
            visible: taxView,
            child: ReceiptText(
              firtsText: "CGST ",
              secondText: "\u{20B9} 1.45",
              firstColor: Constants.balckcolor,
              secondColor: Constants.balckcolor,
            ),
          ),
          ReceiptText(
            firtsText: "Round Off ",
            secondText: "\u{20B9} 0.45",
            firstColor: Constants.greyColor,
            secondColor: Constants.greyColor,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Constants.greyColor,
            height: 1,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 10,
          ),
          ReceiptText(
            firtsText: "Grand Total ",
            secondText: "\u{20B9} 0.45",
            firstColor: Constants.greencolor,
            secondColor: Constants.greencolor,
          )
        ],
      ),
    );
  }
}
