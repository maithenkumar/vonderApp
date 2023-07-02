import 'package:flutter/material.dart';

import '../Costants/constants.dart';
import 'steper.dart';

class TrackingDetails extends StatelessWidget {
  const TrackingDetails(
      {super.key, required this.status,});
      final int status;
 

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        children: [
          steper(status: status,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:const  EdgeInsets.only(
                    bottom: 20,
                    top: 5,
                    left: 10,
                  ),
                  child: Text(
                   "Your order has been received",
                    style: TextStyle(
                      color:status>=1? Constants.redColor:Constants.balckcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: 18,
                    left: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    "The restaurant is preparing your food",
                    maxLines: 2,
                    style: TextStyle(
                      color: status>=2? Constants.redColor:Constants.balckcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: 18,
                    left: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    "Your order has been picked up for delivery",
                    maxLines: 2,
                    style: TextStyle(
                      color: status>=3? Constants.redColor:Constants.balckcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                    left: 10,
                  ),
                  child: Text(
                    "Order arriving soon!",
                    maxLines: 2,
                    style: TextStyle(
                      color: status>=4? Constants.redColor:Constants.balckcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          )
          // IconButton(
          //   onPressed: () {},
          //   icon:  Icon(
          //     Icons.verified_outlined,
          //     size: 15,
          //     color: color,
          //   ),

          //   color: color,
          // ),
        ],
      ),
      // VerticalDivider(
      //   color: Constants.redColor,
      //   thickness: 10,
      //   width: 3,
      //   endIndent: 10,
      // ),
    );
  }
}
