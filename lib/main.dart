import 'package:flutter/material.dart';
import 'package:order_app/screen/loding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Order App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        ),
        home: LodingScreen());
  }
}


