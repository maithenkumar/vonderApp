
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
