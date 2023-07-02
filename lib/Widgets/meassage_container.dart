import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/online_profile.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer(
      {super.key,
      required this.time,
      required this.isonline,
      required this.name,
      required this.message,
      required this.unreadmessage,
      required this.isreaded});

  final bool isonline;
  final String name;
  final String message;
  final String time;
  final bool isreaded;
  final String? unreadmessage;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Constants.liteWhite),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OnlineProfilePhoto(
              isonline: isonline,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: Constants.greyColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    time,
                    style: TextStyle(
                      color: Constants.orangecolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                isreaded == false
                    ? Container(
                        margin: const EdgeInsets.only(top: 10, left: 4),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Constants.orangecolor),
                        child: Center(
                          child: Text(
                            "${unreadmessage}",
                            style: const TextStyle(
                                color: Constants.whitecolor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    : Icon(Icons.done_all_outlined,color: Constants.redColor,)
                    
                
              ],
            ),
            const SizedBox(
              width: 15,
            )
          ],
        ));
  }
}
