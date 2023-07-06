import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_app/Costants/constants.dart';

class TimePIckerContainer extends StatefulWidget {
  final Function(BuildContext, DateTime?) myFunction;

  const TimePIckerContainer({super.key, required this.myFunction});

  @override
  State<TimePIckerContainer> createState() => _TimePIckerContainerState();
}

class _TimePIckerContainerState extends State<TimePIckerContainer> {
  Map date = {};
  List allDate = [];
  final format = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Constants.greyColor, width: 2)),
      child: DateTimeField(
        style: const TextStyle(fontSize: 16, color: Constants.balckcolor),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.access_time_rounded),
            ),
            hintText: "--:-- --",
            errorBorder: InputBorder.none,
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 20)),
        format: format,
        onShowPicker:
         (context, currentValue) =>
            widget.myFunction(context, currentValue),
        // (context, currentValue) async {
        //   final time = await showTimePicker(
        //     context: context,
        //     initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
        //   );
        //   var selectdate = DateTimeField.convert(time);
        //   date["selected time"] = selectdate;
        //   allDate.add(date);
        //   if (kDebugMode) {
        //     print(date);
        //   }
        //   print(allDate);
        //   return DateTimeField.convert(time);
        // },
      ),
    );
  }
}
