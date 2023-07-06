import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:shimmer/shimmer.dart';

import '../Widgets/loding_container.dart';

// https://pub.dev/packages/shimmer
class LodingScreen extends StatefulWidget {
  const LodingScreen({super.key});

  @override
  State<LodingScreen> createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => SimmerContainer(
                  height: 100,
                  width: 200,
                  radius: 10,
                ),
              ),
            ),
            SimmerContainer(height: 50, width: double.infinity, radius: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) => SimmerContainer(
                  height: 400,
                  width: 100,
                  radius: 10,
                ),
              ),
            ),
            SimmerContainer(
              height: 100,
              width: 350,
              radius: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => SimmerContainer(
                  height: 100,
                  width: 200,
                  radius: 10,
                ),
              ),
            ),
            SimmerContainer(
              height: 50,
              width: double.infinity,
              radius: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => SimmerContainer(
                  height: 100,
                  width: 200,
                  radius: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

