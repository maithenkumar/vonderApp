import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_app/Costants/constants.dart';
import 'Widgets/time_picker.dart';
import 'screen/cash_withdrawal_screen.dart';
import 'screen/chat_screen.dart';
import 'screen/new_cart_screen.dart';
import 'screen/payment_details_screen.dart';
import 'screen/payment_recive_list.dart';
import 'screen/persnol_qr_code_scanner_page.dart';
import 'screen/restarent_page.dart';
import 'screen/shop_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Order App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
      ),
      home: const ShopTypeScreen(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final format = DateFormat("yyyy-MM-dd HH:mm");
  @override
  Widget build(BuildContext context) {
    return  Container(

        alignment: Alignment.center,
        height: 40,
        width: 120,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  border: Border.all(
    color: Constants.greyColor,
    width: 2
  )
),
        
        child: DateTimeField(
          style: const TextStyle(fontSize: 15,
          color: Constants.balckcolor),
          
          decoration: const InputDecoration(
              suffixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.access_time_rounded),
              ),
              hintText: "--:-- --",
              errorBorder: InputBorder.none,
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontSize:20
              )),
              
              textAlign: TextAlign.center,
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
        ));
  }
}
