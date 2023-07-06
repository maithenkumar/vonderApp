import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../ApiServices/api_services.dart';
import '../Widgets/set_yime.dart';
import '../Widgets/shop_type_profile.dart';
import '../main.dart';

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
  List timedata=[];

  init() async {
    var res = await sendGetData('getAllCategories', {});
    data.add(res['data']);
    if (data.isNotEmpty) {
      setState(() {
        comesdata = true;
      });
    }
  }

  DateTime? currentValue;

  int timeCount = 1;
  bool currentStatus = false;

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
                ? SizedBox(height: 150, child: Shopprofile())
                : SizedBox(
                    height: 30,
                    child: CircularProgressIndicator(),
                  ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: timeCount,
              itemBuilder: (context, index)=>  SteTime(myFunction:
                   (context, currentValue) async {  
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );
          timedata.add(time);
        //   var selectdate = DateTimeField.convert(time);
        //   date["selected time"] = selectdate;
        //   allDate.add(date);
        //   if (kDebugMode) {
        //     print(date);
        //   }
        //   print(allDate);
          return DateTimeField.convert(time);
        // },

                   })
               ,),
            
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
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(timedata);
              },
              child: Text("Save"),
            )
          ]
        ),
      ),
    );
  }
}
