import 'package:flutter/material.dart';

import '../Costants/constants.dart';
import 'button.dart';

class ItemsContaner extends StatelessWidget {
  const ItemsContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    "Boliled Egg",
                    style: const TextStyle(
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
                child: Icon(
                  Icons.arrow_drop_up,
                  color: Constants.brown,
                  size: 25,
                ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "4 on Boliled Egg with salt pepper ",
                    style: const TextStyle(
                        color: Constants.greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "\u{20B9}70.12",
                    style: const TextStyle(
                        letterSpacing: 0.5,
                        color: Constants.balckcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
         SizedBox(
          height: 10,
         ),
          Column(
            children: [
           Container(
            height: 100,
            width: 150,
            child: Stack(
              children: [
                  Positioned(
                    right: 0,
                    child: Container(
                                  height: 70,
                                  width: 90,
                  
                                  decoration: BoxDecoration(
                                boxShadow: [
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
                                image: DecorationImage(
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
                        fun: () {},
                        sum: "-",
                        color: Constants.redColor,
                        texColor: Constants.whitecolor,
                      ),
                      Text(
                        "2",
                        style: const TextStyle(
                            color: Constants.whitecolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      ButtonSum(
                        fun: () {},
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
