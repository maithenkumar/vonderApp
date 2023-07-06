import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_app/Costants/constants.dart';
import 'ApiServices/api_services.dart';
import 'Widgets/time_picker.dart';
import 'screen/cash_withdrawal_screen.dart';
import 'screen/chat_screen.dart';
import 'screen/disclaimer.dart';
import 'screen/help_center.dart';
import 'screen/loding_chat_screen.dart';
import 'screen/loding_dashboard.dart';
import 'screen/loding_list_screen.dart';
import 'screen/loding_order_screen.dart';
import 'screen/loding_screen.dart';
import 'screen/loding_upline_downline.dart';
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
      home: LodingDashBoardScreen(),
    );
  }
}