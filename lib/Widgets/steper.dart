import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class steper extends StatelessWidget {
  const steper({super.key, required this.status});
  final int status ;

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Icon(Icons.verified,color: status>=1? Constants.redColor:Constants.balckcolor,),
            Container(
              width: 1,
              height: 30,
              color: status>=2? Constants.redColor:Constants.balckcolor,
            ),
            Icon(Icons.verified,color: status>=2? Constants.redColor:Constants.balckcolor,),
            Container(
              width: 1,
              height: 30,
              color: status>=3? Constants.redColor:Constants.balckcolor,
            ),
             Icon(Icons.verified,color: status>=3? Constants.redColor:Constants.balckcolor,),
            Container(
              width: 1,
              height: 30,
              color: status>=4? Constants.redColor:Constants.balckcolor,
            ),
            Icon(Icons.verified,color: status>=4? Constants.redColor:Constants.balckcolor,),
          ],
        );
  }
}