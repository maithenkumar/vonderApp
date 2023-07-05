import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../ApiServices/api_services.dart';
import '../Widgets/set_yime.dart';
import '../Widgets/shop_type_profile.dart';
import '../Widgets/time_picker_Container.dart';

class ShopTypeScreen extends StatefulWidget {
  const ShopTypeScreen({super.key});

  @override
  State<ShopTypeScreen> createState() => _ShopTypeScreenState();
}

class _ShopTypeScreenState extends State<ShopTypeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  bool comesdata = false;
  List data = [];

  init() async {
    var res = await sendGetData('getAllCategories', {});
    data.add(res['data']);
    if (data.isNotEmpty) {
      setState(() {
        comesdata = true;
      });
    }
  }

  int timeCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
          title: "SHOP TYPE",
          func: () {},
          color: Constants.balckcolor,
          bgColor: Constants.bacgroundcolor,
          fronticon: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            comesdata == true
                ? SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data[0].length,
                      itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: ShopTypeProfile(
                            imageurl: data[0][index]["image"],
                            shopName: data[0][index]["name"],
                          )),
                    ),
                  )
                : CircularProgressIndicator(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: timeCount,
              itemBuilder: (context, index) => SteTime(),
            ),
            TextButton.icon(
                onPressed: () {
                  setState(() {
                    timeCount++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  color: Constants.blue,
                ),
                label: const Text(
                  "Add time slots",
                  style: TextStyle(
                    color: Constants.blue,
                    fontSize: 17,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
