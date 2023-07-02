import 'package:flutter/material.dart';

import 'message_page.dart';
import 'notification_page.dart';

class Notification_Page extends StatefulWidget {
  const Notification_Page({super.key});

  @override
  State<Notification_Page> createState() => _Notification_PageState();
}

class _Notification_PageState extends State<Notification_Page>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index=0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text(
            "${index==0?"Notifications":"Messages"}",
            style: TextStyle(fontSize: 15, color: Colors.black),
            
          ),
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                color: const Color.fromRGBO(24, 28, 46, 1),
                style: IconButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(24, 28, 46, 1)),
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.black,
                )),
          ),
         
          bottom: TabBar(
            onTap: (value) => index=value,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.orange,
            indicatorColor: Colors.orange,
            controller: _tabController,
            tabs: const <Tab>[
              Tab(
                text: 'Notifications',
              ),
              Tab(
                text: 'Messages (3)',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [const Notifai(), const Message()],
        ));
  }
}
