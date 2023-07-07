import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';
import 'package:order_app/screen/faq_screen.dart';

import 'contact_us.dart';

class HelperCenterPage extends StatefulWidget {
  const HelperCenterPage({super.key});

  @override
  State<HelperCenterPage> createState() => _HelperCenterPageState();
}

class _HelperCenterPageState extends State<HelperCenterPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
          title: "Help Center",
          func: () {},
          color: Constants.balckcolor,
          bgColor: Constants.bacgroundcolor,
          fronticon: false,
          acticon: true,
          icon: Icons.more_horiz,
          iconsize: 30),
      body: Column(
        children: [
          TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Constants.othercolor,
            indicatorColor: Constants.othercolor,
            controller: _tabController,
            indicatorWeight: 4,
            tabs: const <Tab>[
              Tab(
                text: 'FAQ',
              ),
              Tab(
                text: 'Contact us',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                FAQscreen(),
                const ContactScreen(
               
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
