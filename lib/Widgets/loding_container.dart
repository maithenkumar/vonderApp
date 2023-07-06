import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../Costants/constants.dart';

class SimmerContainer extends StatelessWidget {
  SimmerContainer(
      {super.key, required this.height, required this.width, this.radius = 0,this.margin=5});
  final double height;
  final double width;
  double radius;
  double margin;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Constants.simmerWhite,
      highlightColor: Constants.bacgroundcolor,
      child: Container(
        margin:  EdgeInsets.all(margin),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Constants.greyColor,
            borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
