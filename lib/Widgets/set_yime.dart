import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_app/main.dart';

import '../Costants/constants.dart';
import 'time_picker.dart';
import 'time_picker_Container.dart';

class SteTime extends StatefulWidget {
  const SteTime({super.key});

  @override
  State<SteTime> createState() => _SteTimeState();
}

class _SteTimeState extends State<SteTime> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BasicDateTimeField(),
      child: const Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Opens at",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Constants.greyColor,
                    ),
                  ),
                ),
                MyWidget()
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "to",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Constants.greyColor,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Close at",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Constants.greyColor,
                    ),
                  ),
                ),
                MyWidget()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BasicDateTimeField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Basic date & time field (${format.pattern})'),
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) async {
          return await showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100),
          ).then((DateTime? date) async {
            if (date != null) {
              final time = await showTimePicker(
                context: context,
                initialTime:
                    TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
              );
              return DateTimeField.combine(date, time);
            } else {
              return currentValue;
            }
          });
        },
      ),
    ]);
  }
}
