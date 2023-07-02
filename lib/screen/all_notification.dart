import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/all_nottifi_container.dart';

class AllNotification extends StatefulWidget {
  const AllNotification({super.key});

  @override
  State<AllNotification> createState() => _AllNotificationState();
}

class _AllNotificationState extends State<AllNotification> {
  List data = [
    {
      "description": "MB93150543",
      "title": "Nandhini  R",
      "time": "2023-06-30 05:51:34"
    },
    {
      "description": "MB98126090",
      "title": "se ar",
      "time": "2023-0-30 18:52:11"
    },
    {
      "description": "MB36523761",
      "title": "Thirumalaikumar  R",
      "telephone": "9543373476"
    },
    {
      "description": "MB53676584",
      "title": "V. Ganapathi Appu",
      "time": "2023-05-30 12:26:46"
    },
    {
      "description": "MB18622090",
      "title": "S PITCHANDY RAJA  RAJA",
      "telephone": "9566569082"
    },
    {
      "description": "MB35359104",
      "title": "Kali G",
      "time": "2023-05-29 17:08:32"
    },
    {
      "description": "MB43334745",
      "title": "Ramesh  A",
      "time": "2023-05-29 16:24:36"
    },
    {
      "description": "MB21940424",
      "title": "KARTHIKEYAN K",
      "time": "2023-05-29 15:58:12"
    },
    {
      "description": "MB11037058",
      "title": "U.A.SENTHILRAJ UAS",
      "time": "2023-05-29 15:03:15"
    },
    {
      "description": "MB19429569",
      "title": "வெ.விக்னேஷ் குடும்பர்",
      "time": "2023-05-29 13:34:00"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(color:Constants.balckcolor , func: () {  }, title: 'Notification', bgColor: Constants.bacgroundcolor),
      backgroundColor: Constants.bacgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          

            const SizedBox(
              height: 30,
            ),
          
              Expanded(
              child: ListView(children: [
              for(int i=0;i<data.length;i++)...[
                AllNotifyContainer(
                  description: data[i]["description"],
                  title: data[i]["title"],
                  time: data[i]["telephone"] ?? data[i]["time"],
                ),
              ]

              ],)
            ),
           
            // const Text(
            //   "This Week",
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w700,
            //     color: Constants.greyColor,
            //   ),
            // ),
            // Expanded(
            //   child: ListView(children: [
            //   for(int i=0;i<data.length;i++)...[
            //     AllNotifyContainer(
            //       description: data[i]["description"],
            //       title: data[i]["title"],
            //       time: data[i]["telephone"] ?? data[i]["time"],
            //     ),
            //   ]

            //   ],)
            // ),
           
          ],
        ),
      ),
    );
  }
}
