import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'screen/chat_screen.dart';
import 'screen/new_cart_screen.dart';


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
     
      home: NewCart()
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  late ScrollController _controller;
  late bool _scrollingEnabled;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _scrollingEnabled = true;
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollingEnabled) {
      // Scroll the page when ListView is scrolled
      _controller.jumpTo(_controller.offset);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrolling ListView'),
      ),
      body: SingleChildScrollView(
        // controller: _controller,
        child: Column(
          children: [
            // Other widgets on the page
Container(
  height: 100,
  width: 100,
  color: Constants.brown,
),
            ListView.builder(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
Container(
  height: 100,
  width: 100,
  color: Constants.brown,
),Container(
  height: 100,
  width: 100,
  color: Constants.brown,
),Container(
  height: 100,
  width: 100,
  color: Constants.brown,
),
            // Other widgets on the page
          ],
        ),
      ),
    );
  }
}
