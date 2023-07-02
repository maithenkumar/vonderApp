import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

class NewCart extends StatefulWidget {
  const NewCart({super.key});

  @override
  State<NewCart> createState() => _NewCartState();
}

class _NewCartState extends State<NewCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
        title: "Cart",
        func: () {},
        color: Constants.balckcolor,
        bgColor: Constants.bacgroundcolor,
      ),
    );
  }
}
