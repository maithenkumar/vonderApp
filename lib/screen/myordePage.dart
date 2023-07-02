
import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/myorderdetails.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "My Order", func: (){}, color: Constants.balckcolor, bgColor: Constants.bacgroundcolor),
      backgroundColor: Constants.bacgroundcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // App_Bar(func: (){}, text: "My Order", color: Constants.balckcolor)
          // Row(
          //   children: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.keyboard_arrow_left_outlined,
          //         color: Constants.balckcolor,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 70,
          //     ),
          //     const Text(
          //       "My Order",
          //       style: TextStyle(
          //           color: Constants.balckcolor,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w500),
          //     )
          //   ],
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const MyorderDetails(
                status: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
