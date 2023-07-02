import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:order_app/Costants/constants.dart';

class OnlineProfilePhoto extends StatelessWidget {
  const OnlineProfilePhoto({super.key, required this.isonline});
final bool isonline;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
         const  CircleAvatar(
            minRadius: 25,
            backgroundImage: AssetImage(
              "../assets/images/image.png",
            ),
            backgroundColor: Constants.greyColor,
          ),
          Positioned(
            bottom: 3,
            right: 1, 
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: isonline==true?  Constants.redColor:Constants.greyColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Constants.whitecolor, width: 3)),
            ),
          ),
        ],
      ),
    );

  }
}
