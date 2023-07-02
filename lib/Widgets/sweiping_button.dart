import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../screen/myordePage.dart';

class Swipingbutton extends StatefulWidget {
  const Swipingbutton({super.key});

  @override
  State<Swipingbutton> createState() => _SwipingbuttonState();
}

class _SwipingbuttonState extends State<Swipingbutton> {
  bool isFinished =false;
  @override
  Widget build(BuildContext context) {
    return Container(height: 80,
    width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      color: Constants.redColor,
      ),
      child: Center(
        child: SwipeableButtonView(
          
          buttonText: 'SWIPE TO SEND',
                      buttontextstyle: TextStyle(
        color: Constants.whitecolor,
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 3
        
                      ),
          buttonWidget:const  Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
          ),
          activeColor: Constants.redColor,
          isFinished: isFinished,
          onWaitingProcess: () {
            Future.delayed(Duration(seconds: 2), () {
              setState(() {
                isFinished = true;
              });
            });
          },
          onFinish: () async {
            await Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: MyOrderPage()));
                      
            //TODO: For reverse ripple effect animation
            setState(() {
              isFinished = false;
            });
          },
        ),
      ),
    );
  }
}