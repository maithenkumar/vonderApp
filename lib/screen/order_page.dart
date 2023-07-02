import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

import '../Widgets/myScheduleView.dart';
import '../Widgets/daysContainer.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});
  

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>  with SingleTickerProviderStateMixin {
   late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }
   var istab=false;


  @override
  Widget build(BuildContext context) {
    void ontab(){
  setState(() {
   istab==true?istab=false:istab=true;
   
  });
}

    
     Map backgroundColor = {
      "colors": [
        {
          'bgColor': const Color.fromARGB(237, 255, 255, 255),
          'textClour': const Color.fromARGB(255, 8, 8, 8)
        },
        {
          'bgColor': const Color.fromARGB(237, 255, 255, 255),
          'textClour': Color.fromARGB(255, 129, 64, 64)
        },
      ]
    };
    List data = backgroundColor["colors"];
    return Scaffold(
      backgroundColor:Constants.bacgroundcolor,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 100,

            decoration: BoxDecoration(),
            child: ListView.builder(
            itemCount: 30,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  DateContainer(
                  
                    bagColor: data[0]["bgColor"],
                    index: index,
                    date: DateTime.now().add(Duration(days: index)),
                    txtColor: data[0]["textClour"],
                    function:(){
                     
                    }, istab: istab,
                    
                  ),
            ),

            //
          ),
          TabBar(
            
            unselectedLabelColor: Colors.grey,
            labelColor: Constants.darkblue,
            indicatorColor:Constants.darkblue,
            indicatorSize:TabBarIndicatorSize.tab ,
            indicatorWeight: 5,
            labelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold
            ),
            controller: _tabController,

            tabs: const <Tab>[

              Tab(
                text: 'BREAKFAST',
                
              ),
              Tab(
                text: 'LUNCH',
              ),Tab(
                text: 'SNACKS',
              ),
            ],
          ),
       
          
          
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                MyScheduleView(),
                MyScheduleView(),
                MyScheduleView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}