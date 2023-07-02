import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_app/Costants/constants.dart';
import '../Widgets/commentBox.dart';
import '../Widgets/rating_star.dart';
import '../controller.dart/controller.dart';


class RatingPage extends StatefulWidget {
 

  // int starCount =5;
  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  bool istouch = true;



final Controller starCount=Get.put(Controller());


final Controller starval=Get.find();
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // App_Bar(func: (){}, text: "Rating", color: Constants.balckcolor)
       
        const SizedBox(
            height: 40,
          ),
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey)],
                border: Border.all(color: Constants.whitecolor)),
            child: const CircleAvatar(
              minRadius: 45,
              backgroundColor: Colors.grey,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Gregory Smuth",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Text(
            "652-UKW",
            style: TextStyle(
                fontSize: 15,
                color: Constants.greyColor,
                fontWeight: FontWeight.w400),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "How was your trip?",
              style: TextStyle(
                  fontSize: 24,
                  color: Constants.balckcolor,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Text(
            "Your feedback will help ",
            style: TextStyle(
                fontSize: 17,
                color: Constants.greyColor,
                fontWeight: FontWeight.w400),
          ),
          const Text(
            "improve driving experience",
            style: TextStyle(
                fontSize: 17,
                color: Constants.greyColor,
                fontWeight: FontWeight.w400),
          ),Rating_Star( fun: (){
            setState(() {
              setState(() {
                print(starCount);
              });
              
            });
          },),
           Padding(
            padding: const  EdgeInsets.all(20),
            child:  CommentBox(controller: controller,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: ElevatedButton(
              onPressed: () {
               
                  print(starval.ratingStarItem.value);
                  // print(starCount);
                print(controller.text);
                

              
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.redColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(double.maxFinite, 50)),
              child: const Center(
                child: Text("Conform"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
