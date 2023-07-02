import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/button.dart';
import '../Widgets/delivery_address_details.dart';

class DeliveryAddressPage extends StatefulWidget {
  const DeliveryAddressPage({super.key});

  @override
  State<DeliveryAddressPage> createState() => _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends State<DeliveryAddressPage> {
  List data = [
    {
      "id": 1686817429,
      "address": "Begambur, Tamil Nadu",
      "pincode": "624002",
      "lat": "10.3362946",
      "lng": "77.9564599",
      "label": "work",
      "door": "98",
      "landmark": "a2b",
      "created_at": "2023-06-15 13:53:49"
    },
    {
      "id": 1686817429,
      "address": "98, Kovil street, Begambur, Tamil Nadu",
      "pincode": "624002",
      "lat": "10.3362946",
      "lng": "77.9564599",
      "label": "Office",
      "door": "98",
      "landmark": "a2b",
      "created_at": "2023-06-15 13:53:49"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: 'Delivery Address', func: (){}, color: Constants.balckcolor, bgColor: Constants.bacgroundcolor),
      backgroundColor: Constants.bacgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
           
            Flexible(
              child: ListView(
                children: [
                  for (int i = 0; i < data.length; i++) ...[
                    DeliveryAddressDeatails(
                      subTitle: data[i]["address"],
                      title: data[i]["label"],
                    )
                  ]
                ],
              ),
            ),
            OutlinedButton_(color: Colors.black, fun: () {  }, sum: 'Add New',),
         Spacer()
          ],
        ),
      ),
    );
  }
}
