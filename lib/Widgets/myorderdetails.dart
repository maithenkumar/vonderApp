
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:order_app/Costants/constants.dart';

import 'myorderExpandedDeatails.dart';

class MyorderDetails extends StatefulWidget {
  const MyorderDetails({super.key, required this.status});
  final int status ;

  @override
  State<MyorderDetails> createState() => _MyorderDetailsState();
}

class _MyorderDetailsState extends State<MyorderDetails> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Constants.whitecolor),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // image: DecorationImage(image:AssetImage("./assets/images/vector.png")
                        // ),
                        color: Constants.lightpinkcolor),
                    child: Image.asset(
                      "../assets/images/vector.png",
                    )),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:1),
                    child: const Text(
                      "Order #2313",
                      style: TextStyle(
                        fontSize: 15,
                        color: Constants.balckcolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: const Text(
                      "Placed on Octobar 19 2021",
                      style: TextStyle(
                        fontSize: 10,
                        color: Constants.greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: const Row(
                      children: [
                        Text(
                          "Items: ",
                          style: TextStyle(
                            fontSize: 10,
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "10",
                          style: TextStyle(
                            fontSize: 10,
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Items: ",
                          style: TextStyle(
                            fontSize: 10,
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "10",
                          style: TextStyle(
                            fontSize: 10,
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide(
                        width: 5.0,
                        color: Constants.redColor,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isExpand == false?isExpand=true:isExpand=false;
                      print(isExpand);
                    });
                  },
                  child: Icon(
                   isExpand==true?Icons.arrow_drop_up: Icons.arrow_drop_down,
                    color: Constants.redColor,
                  ))
            ],
          ),
          Divider(),
          Visibility(
            visible: isExpand,
            child: MyDeatailsExpandedDeatails(status: widget.status,),
          )
          //  isExpand==true? MyDeatailsExpandedDeatails():Container()
        ],
      ),
    );
  }
}
