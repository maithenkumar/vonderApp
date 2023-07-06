import 'package:flutter/material.dart';
import 'package:order_app/ApiServices/api_services.dart';

import '../Widgets/faq_container.dart';

class FAQscreen extends StatefulWidget {
  FAQscreen({super.key});

  @override
  State<FAQscreen> createState() => _FAQscreenState();
}

class _FAQscreenState extends State<FAQscreen> {
  List data = [];
  bool isloding=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getData().then((value) => data.add(value['data']));
    // print(" this the data $data");
    init();
  }
void init()async{
  // getData().then((value){
  //   print(value);
  //   data.add(value);
  //   print(data.length);
  //   print(data);
    
  // }
  
  
  
  // );
  var listdata=await getData();
  data.add(listdata);
    if (data.isNotEmpty) {
      setState(() {
        
        isloding=true;
        // print(data);
        
        print(data[0]["data"][0]["question"]);
      });
      
    } else {
      
    }

}
  @override
  Widget build(BuildContext context) {
    return
     isloding==true? ListView.builder(
      itemCount: data[0]["data"].length,
      itemBuilder: (BuildContext context, int index) => FAQcontainer(
        headText: data[0]["data"][index]["question"],
        subText: data[0]["data"][index]["answer"],
      ),
    ):
    
    Center(child: CircularProgressIndicator(),);
  }
}
