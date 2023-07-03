import 'package:flutter/material.dart';

import '../Costants/constants.dart';
import 'button.dart';

class ItemsContaner extends StatefulWidget {
  const ItemsContaner({super.key});

  @override
  State<ItemsContaner> createState() => _ItemsContanerState();
}

class _ItemsContanerState extends State<ItemsContaner> {
  int itemCount=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Constants.whitecolor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    "Boliled Egg",
                    style: TextStyle(
                        color: Constants.balckcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              Container(
                // margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Constants.brown,
                  width: 3),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Icon(
                  Icons.arrow_drop_up,
                  color: Constants.brown,
                  size: 25,
                ),
              ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "4 on Boliled Egg with salt pepper ",
                    style: TextStyle(
                        color: Constants.greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "\u{20B9}70.12",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Constants.balckcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        
        const  Spacer(),
          Column(
            children: [
           SizedBox(
            height: 100,
            width: 120,
            child: Stack(
              children: [
                  Positioned(
                    right: 0,
                    child: Container(
                                  height: 70,
                                  width: 90,
                  
                                  decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                      color: Constants.greyColor,
                      blurRadius: 2,
                      spreadRadius: 1)
                                ],
                                border: Border.all(
                                  color: Constants.bacgroundcolor,
                                  width: 4,
                                ),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                  image: AssetImage("../assets/images/image.png"),
                                  fit: BoxFit.fill,
                                ),
                                  ),
                                ),
                  ),
              Positioned
              (top: 60,
              right: 0,
                child: Container(
                  
                  decoration: BoxDecoration(
                      color: Constants.redColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonSum(
                        fun: () {
                          setState(() {
                            itemCount<=1?itemCount=1:itemCount--;
                          });
                        },
                        sum: "-",
                        color: Constants.redColor,
                        texColor: Constants.whitecolor,
                      ),
                       Text(
                        "$itemCount",
                        style: const TextStyle(
                            color: Constants.whitecolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      ButtonSum(
                        fun: () {
                          setState(() {
                            itemCount++;
                          });
                        },
                        sum: "+",
                        color: Constants.redColor,
                        texColor: Constants.whitecolor,
                      )
                    ],
                  ),
                ),
              )
              ],
            ),
           )
            ],
          ),
        ],
      ),
    );
  }
}
