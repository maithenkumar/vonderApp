import 'package:flutter/material.dart';

import '../Costants/constants.dart';

// ignore: must_be_immutable
class Steper extends StatelessWidget {
   Steper({super.key, required this.status,this.color=Constants.redColor,this.height=30});

  final int status ;
 var height;
Color color;
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Icon(Icons.verified,color: status>=1? color:Constants.balckcolor,),
            Container(
              width: 1,
              height: height,
              color: status>=2? color:Constants.balckcolor,
            ),
            Icon(Icons.verified,color: status>=2? color:Constants.balckcolor,),
            Container(
              width: 1,
              height: height,
              color: status>=3? color:Constants.balckcolor,
            ),
             Icon(Icons.verified,color: status>=3? color:Constants.balckcolor,),
            Container(
              width: 1,
              height: height,
              color: status>=4? color:Constants.balckcolor,
            ),
            Icon(Icons.verified,color: status>=4? color:Constants.balckcolor,),
          ],
        );
  }
}