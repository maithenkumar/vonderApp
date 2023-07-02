import 'package:flutter/material.dart';

import '../Widgets/order_container.dart';

// ignore: camel_case_types
class History_Page extends StatefulWidget {
  const History_Page({super.key});

  @override
  State<History_Page> createState() => _History_PageState();
}

class _History_PageState extends State<History_Page> {
  @override
  Widget build(BuildContext context) {
    Map details = {
      "data": [
        {
          'foodType': 'Food',
          'prize': '232',
          'id': '23424',
          'itemcount': 1,
          'foodname': "pizza"
        },
        {
          'foodType': 'Drink',
          'prize': '23232',
          'id': '424',
          'itemcount': 21,
          'foodname': "milk"
        },
        {
          'foodType': 'Drink',
          'prize': '374',
          'id': '211424',
          'itemcount': 234,
          'foodname': "maassa"
        },
        {
          'foodType': 'Drink',
          'prize': '232',
          'id': '23424',
          'itemcount': 3,
          'foodname': "milk"
        },
        {
          'foodType': 'Food',
          'prize': '45',
          'id': '12342',
          'itemcount': 43,
          'foodname': "burger"
        },
        {
          'foodType': 'Food',
          'prize': '23',
          'id': '23424',
          'itemcount': 45,
          'foodname': "mono"
        },
      ]
    };
    List _data = details["data"];
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      height: double.infinity,
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index) => Order_Container(
                completed: true,
                foodName: _data[index]['foodname'],
                cost: _data[index]['prize'],
                itemNum: _data[index]['itemcount'],
                id: _data[index]['id'],
                food_type: _data[index]['foodType']),
          )),
    );
  }
}
