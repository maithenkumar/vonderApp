import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'screen/cash_withdrawal_screen.dart';
import 'screen/chat_screen.dart';
import 'screen/new_cart_screen.dart';
import 'screen/payment_details_screen.dart';
import 'screen/payment_recive_list.dart';
import 'screen/persnol_qr_code_scanner_page.dart';
import 'screen/restarent_page.dart';

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
        home: Scaffold(
            body: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => PaymentRecivedList(),
                ),
              )
            ],
          ),
        )));
  }
}
