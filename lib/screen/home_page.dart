import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import 'package:order_app/screen/history_page.dart';
import 'package:order_app/screen/ongoing_page.dart';

import '../Widgets/daysContainer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }
var _istab=false;
void ontab(){
  setState(() {
    if (_istab==false) {
  _istab=true;
    } else {
      _istab=false;
    }
 
  });
}


  @override
  Widget build(BuildContext context) {
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
      backgroundColor: Constants.bacgroundcolor,
      appBar:appbar(title: "My Order", func: (){}, color: Constants.balckcolor, bgColor: Constants.bacgroundcolor)
     , body: Column(
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
                    function:()=>ontab(), istab: _istab,
                    
                  ),
            ),

            //
          ),
          TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.orange,
            indicatorColor: Colors.orange,
            controller: _tabController,
            tabs: const <Tab>[
              Tab(
                text: 'Ongoing',
              ),
              Tab(
                text: 'History',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [Ongoing_Page(), History_Page()],
            ),
          ),
        ],
      ),
    );
  }
}
