import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class TrackingBottomContainer extends StatelessWidget {
  const TrackingBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        // border:Border(

        //   top: BorderSide(
        //   )
        // ) ,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Robert F",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Courier",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Constants.greyColor),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              
              
              FloatingActionButton(onPressed: (){},
              backgroundColor: Constants.redColor,
              mini: true,
              foregroundColor: Constants.redColor,
              elevation: 13,child: Icon(
                        Icons.phone,
                        color: Constants.whitecolor,
                      ),
                      )
            
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Constants.redColor, width: 1)),
                  child: Center(
                    child:
                    
                    
                     IconButton(
                      style: IconButton.styleFrom(
                        elevation: 10,
                        shadowColor: Colors.red,

                        
                      ),
                      icon: const Icon(
                        Icons.message_outlined,
                        color: Constants.redColor,
                      ),
                      onPressed: () {},
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
