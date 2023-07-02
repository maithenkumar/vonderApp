import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/ClourButton.dart';
import '../Widgets/cart_container.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List data = [
    {
      "dishname": "Chicken Balado",
      "price": "US21.2",
    },
    {
      "dishname": "Tempe Mendoan ",
      "price": "US2671.2",
    },
    {
      "dishname": "Lemon Tea",
      "price": "US21.2",
    },
    {"dishname": "Chicken Balado", "price": "US2761.2"},
    {
      "dishname": "Chicken Balado",
      "price": "US721.2",
    },
    {
      "dishname": "Chicken Balado",
      "price": "US21.2",
    },
    {
      "dishname": "Tempe Mendoan ",
      "price": "US2671.2",
    },
    {
      "dishname": "Lemon Tea",
      "price": "US21.2",
    },
    {
      "dishname": "Chicken Balado",
      "price": "US2761.2",
    },
    {
      "dishname": "Chicken Balado",
      "price": "US721.2",
    },
    {
      "dishname": "Chicken Balado",
      "price": "US21.2",
    },
    {
      "dishname": "Tempe Mendoan ",
      "price": "US2671.2",
    },
    {
      "dishname": "Lemon Tea",
      "price": "US21.2",
    },
    {
      "dishname": "Chicken Balado",
      "price": "US2761.2",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.bacgroundcolor,
        appBar: appbar(
          title: "Order",
          func: () {},
          color: Constants.balckcolor,
          bgColor: Constants.bacgroundcolor,
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Flexible(
                  child: ListView(
                    children: [
                      for (int i = 0; i < data.length; i++) ...[
                        CartContainer(
                          dishname: data[i]["dishname"],
                          price: data[i]["price"],
                        ),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClourButton(
              fnSize: 20,
              height: 80,
              fun: () {},
              btmnText: 'CHEAKOUT(${data[0]["price"]})',
              textColor: Constants.whitecolor,
              btnColor: const Color.fromARGB(255, 43, 151, 47),
            ),
          )
          //   body: Stack(
          // children: [ Padding(
          //       padding: const EdgeInsets.all(20),
          //       child: Column(
          //         children: [
          //           Flexible(

          //             child: ListView(
          //               children: [
          //                 for (int i = 0; i < data.length; i++) ...[
          //                   CartContainer(
          //                     dishname: data[i]["dishname"],
          //                     price: data[i]["price"],
          //                   ),
          //                 ]
          //               ],
          //             ),
          //           ),
          //           const Spacer(),
          //           ClourButton(
          //             fnSize: 20,
          //             height: 80,
          //             fun: () {},
          //             btmnText: 'CHEAKOUT(${data[0]["price"]})',
          //             textColor: Constants.whitecolor,
          //             btnColor:const  Color.fromARGB(255, 43, 151, 47),
          //           )
          //         ],
          //       ),
          //     ),]
          //   ),
        ]));
  }
}
