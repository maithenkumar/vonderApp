import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

// ignore: must_be_immutable
class RestaurantsDetails extends StatefulWidget {
  const  RestaurantsDetails(
      {super.key,
      required this.restname,
      required this.dishname,
      required this.rating,
      required this.type,
      required this.time});
  final String restname;

  final String dishname;

  final String rating;
  final String type;
 final int time;

  @override
  State<RestaurantsDetails> createState() => _RestaurantsDetailsState();

}

class _RestaurantsDetailsState extends State<RestaurantsDetails> {
 
 @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
   
  }

  @override
  Widget build(BuildContext context) {
     var minute  =( (widget.time/1000)/60);
    //  =widget.time/1000;


  
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Constants.greyColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                widget.restname,
                style: const TextStyle(
                  color: Constants.balckcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                widget.dishname,
                style: const TextStyle(
                    letterSpacing: 2, color: Constants.greyColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Icon(
                      Icons.star_border_outlined,
                      color: Constants.redColor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: Text(
                      widget.rating,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Constants.balckcolor),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Icon(
                      Icons.fire_truck_outlined,
                      color: Constants.redColor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: Text(
                      widget.type,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Constants.balckcolor),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Icon(
                      Icons.timer,
                      color: Constants.redColor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: Text(
                      "${minute.toStringAsFixed(0)} min",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Constants.balckcolor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
