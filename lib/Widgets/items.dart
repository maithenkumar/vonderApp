import 'package:flutter/material.dart';

import '../Costants/constants.dart';
import 'button.dart';
import 'cheakBox.dart';
import 'item_text.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
   int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Constants.whitecolor),
                      child: Row(
                        children: [
                          CheakBox(),
                          const Expanded(
                            child: Text(
                              "Idly with Chicken kuzhambu",
                              style: TextStyle(
                                  color: Constants.balckcolor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(),
                          ButtonSum(
                              fun: () {
                                setState(() {
                                  itemCount<=0?itemCount=0:itemCount--;
                                });
                              },
                              sum: "-",
                              color: Constants.pinkcolor),
                          ItemText(itemCount: itemCount),
                        
                          ButtonSum(fun: () {
                                setState(() {
                                  itemCount++;
                                });
                              },sum: "+", color: Constants.brown)
                        ],
                      ),
                    );
  }
}