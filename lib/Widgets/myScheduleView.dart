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
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, bottom: 20),
          child: Container(
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Constants.whitecolor,
                borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
              ),
              child: Text("Select Items",
                  style: TextStyle(
                      fontSize: 20,
                      color: Constants.balckcolor,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(20),
                    child: Items(),
                  )),
        ),
      ],
    );
  }
}
