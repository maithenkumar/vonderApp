import 'package:flutter/material.dart';
import 'package:order_app/Widgets/loding_container.dart';

class LodingUplineDownlineScreen extends StatelessWidget {
  const LodingUplineDownlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/10,bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SimmerContainer(
              margin: 0,
              height: 100,
              width: 150,
              radius: 15,
            ),
            SimmerContainer(
              height: 70,
              margin: 0,
              width: 7,
              radius: 0,
            ),
            SimmerContainer(
              margin: 0,
              height: 100,
              width: 150,
              radius: 15,
            ),
            SimmerContainer(
              height: 70,
              margin: 0,
              width: 7,
              radius: 0,
            ),
            SimmerContainer(
              margin: 0,
              height: 100,
              width: 150,
              radius: 15,
            ),
            SimmerContainer(
              height: 70,
              margin: 0,
              width: 7,
              radius: 0,
            ),
            SimmerContainer(
              margin: 0,
              height: 100,
              width: 150,
              radius: 15,
            ),
          ],
        ),
      ),
    );
  }
}
