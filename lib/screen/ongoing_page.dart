import 'package:flutter/material.dart';
import 'package:order_app/Widgets/order_container.dart';

class Ongoing_Page extends StatefulWidget {
  const Ongoing_Page({super.key});

  @override
  State<Ongoing_Page> createState() => _Ongoing_PageState();
}

class _Ongoing_PageState extends State<Ongoing_Page> {
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
      List  _data = details["data"];
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      height: double.infinity,
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index) => Order_Container(
              
                foodName: _data[index]['foodname'],
                cost: _data[index]['prize'],
                itemNum: _data[index]['itemcount'],
                id: _data[index]['id'],
                food_type: _data[index]['foodType']),
          )
     
          ),
    );
  }
}
