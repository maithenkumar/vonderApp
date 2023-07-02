import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/restaurants_details.dart';

class MyBankPage extends StatefulWidget {
  const MyBankPage({super.key});

  @override
  State<MyBankPage> createState() => _MyBankPageState();
}

class _MyBankPageState extends State<MyBankPage> {
  List data = [
    {
      "restname": "Rose garden Restaurant",
      "dishname": "Burger - Chiken - Riche - Wings ",
      "rating": "4.2",
      "type": "Free",
      
      "time":2131231

    },
    {
      "restname": "Goutham Restaurant",
      "dishname": "Burger - Chiken - Riche - Wings ",
      "rating": "3.5",
      "type": "paid",
      "min": "23 min",
      "time":1231231

    },
    {
      "restname": "maitheen Restaurant",
      "dishname": "Burger - Chiken - Riche - Wings ",
      "rating": "4.5",
      "type": "Free"
    ,
      "time":121233

    },
    {
      "restname": "Goutham Restaurant",
      "dishname": "Burger - Chiken - Riche - Wings ",
      "rating": "3.5",
      "type": "paid",
    
      "time":121223

    },
    {
      "restname": "maitheen Restaurant",
      "dishname": "Burger - Chiken - Riche - Wings ",
      "rating": "4.5",
      "type": "Free",
     
      "time":2312132

    },
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
        fronticon: false,
        acticon: true,
        acttext: "See All",
        title: "Open Restaurants",
        func: () {},
        color: Constants.balckcolor,
        bgColor: Constants.bacgroundcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10,left: 20,right: 20),
        child: Column(
          children: [
          Expanded(
            child: ListView(
              children: [
                for(int i=0;i<data.length;i++)...[
                    RestaurantsDetails(
                  restname: data[i]["restname"],
                  dishname: data[i]["dishname"],
                  rating: data[i]["rating"],
                  type: data[i]["type"],
                 time:   data[i]["time"],)
                ]
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
