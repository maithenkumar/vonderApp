// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_app/Costants/constants.dart';

import '../controller.dart/controller.dart';



// ignore: camel_case_types
class Rating_Star extends StatefulWidget {
     Rating_Star({super.key,  required this.fun,  });
  // int starCount;
 final Function fun;

  @override
  State<Rating_Star> createState() => _Rating_StarState();
}

class _Rating_StarState extends State<Rating_Star> {
  
final Controller starCount=Get.put(Controller());

final Controller starval=Get.find();
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for(int i=1; i<=5;i++)...[
                GestureDetector(
                  onTap:
                  (){
                
                    starCount.ratingStarItem.value=i;
                  
               
                    
                  },
                  child: 
                     Obx(
                      () => 
                     Padding(
                        padding:  EdgeInsets.all(5),
                        child: Icon(
                        Icons.star,
                        size: 50,
                        color:i<=starval.ratingStarItem.value?(Constants.yellowColor):Constants.normal_star_colour
                                    ),
                                         ),
                     ),
                  ), 
                
              ]
            ],
          ),
        )
       
      );
  }
}