import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

import '../Widgets/traacking_details.dart';
import '../Widgets/trackingBottomContainer.dart';

class TrackingOrder extends StatefulWidget {
  const TrackingOrder({super.key});

  @override
  State<TrackingOrder> createState() => _TrackingOrderState();
}

class _TrackingOrderState extends State<TrackingOrder> {
 int  status =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Constants.greyColor),
                  ),
                 const  Expanded(
                    child:  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Ulttora Coffee House",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Constants.balckcolor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Order At 06 sept, 1003",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(160, 165, 186, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "2X",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(100, 105, 130, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              "20 min",
              style: TextStyle(
                  color: Constants.balckcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Estimated delivery time",
                style: TextStyle(
                    color: Color.fromRGBO(100, 105, 130, 1),
                    letterSpacing: 2,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
          ),
        TrackingDetails(status: status,),
          Spacer()
          , TrackingBottomContainer()
        ],
      ),
    );
  }
}
