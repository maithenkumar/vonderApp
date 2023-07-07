import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/items.dart';


class MyScheduleView extends StatefulWidget {
  const MyScheduleView({super.key});

  @override
  State<MyScheduleView> createState() => _MyScheduleViewState();
}

class _MyScheduleViewState extends State<MyScheduleView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SizedBox(height: 50,),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(left: 5,right: 5,top: 10),
                    child: Items(),
                  )),
        ),
      ],
    );
  }
}
