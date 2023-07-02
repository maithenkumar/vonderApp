import 'package:flutter/material.dart';
import 'package:order_app/ApiServices/api_services.dart';

import '../Widgets/faq_container.dart';

class FAQscreen extends StatefulWidget {
   FAQscreen({super.key});

  @override
  State<FAQscreen> createState() => _FAQscreenState();
}

class _FAQscreenState extends State<FAQscreen> {
List data =[
 
];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData().then((value) => data[value]);
  print(data);
  }
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        for(int i=0;i<data.length;i++)...{
          FAQcontainer(headText: data[i]["question"], subText:data[i]["question"] ,)
        }
      ],
    );
 
  }
}