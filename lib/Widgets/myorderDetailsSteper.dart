import 'package:flutter/material.dart';
import '../Costants/constants.dart';

class MyorderSteper extends StatelessWidget {
  const MyorderSteper({super.key, required this.status});
  final int status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Icon(Icons.verified,color: status>=2? Constants.redColor:Constants.balckcolor,),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color:  status>=2? Constants.redColor:Constants.balckcolor,
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 2,
          height: 25,
          color: status >= 2 ? Constants.redColor : Constants.balckcolor,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: status >= 2 ? Constants.redColor : Constants.balckcolor,
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 2,
          height: 25,
          color: status >= 3 ? Constants.redColor : Constants.balckcolor,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: status >= 3 ? Constants.redColor : Constants.balckcolor,
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 2,
          height: 25,
          color: status >= 4 ? Constants.redColor : Constants.balckcolor,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color:status >= 4 ? Constants.redColor : Constants.balckcolor,
              borderRadius: BorderRadius.circular(5)),
        ),Container(
          width: 2,
          height: 25,
          color: status >= 5 ? Constants.redColor : Constants.balckcolor,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color:status >= 5 ? Constants.redColor : Constants.balckcolor,
              borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
