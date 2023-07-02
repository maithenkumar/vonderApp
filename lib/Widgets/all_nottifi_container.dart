import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class AllNotifyContainer extends StatelessWidget {
  const AllNotifyContainer(
      {super.key,
      required this.title,
      required this.description,
      required this.time});
  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    int year = now.year;
    int month = now.month;
    int day = now.day;
    String currentTime = "$year-0$month-$day ";
    String week="2023-05-30 12:26:46";

    bool isweek = time.contains(week);

    bool isday = time.contains(currentTime.toString());
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 20, top: 20),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Visibility(
              visible: isday,
              child: const Padding( 
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Constants.greyColor,
                  ),
                ),
              )),
               Visibility(
              visible: isweek,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "This week",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Constants.greyColor,
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Constants.whitecolor),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Constants.balckcolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          description,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Constants.greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                time,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 12,
                  color: Constants.greyColor,
                ),
              ),
            ],
          ),
       
          //  time.contains(is)? const Padding(
          //    padding:  EdgeInsets.symmetric(vertical: 20),
          //    child:  Text(
          //       "Today",
          //       style: TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w700,
          //         color: Constants.greyColor,
          //       ),
          //     ),
          //  ):const Text(""),
          
        ],
      ),
    );
  }
}
