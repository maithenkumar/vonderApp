import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/meassage_container.dart';
import '../Widgets/online_profile.dart';
import '../Widgets/text_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  List data = [
    {
      "isonline": true,
      "name": "maitheen",
      "message": "hi the  how are you in the main",
      "time": "2:23",
      "unreadmessage": "3",
      "isreaded": false
    },
    {
      "isonline": true,
      "name": "kaviya",
      "message": "hi the  how are you in the main",
      "time": "4:12",
      "unreadmessage": "3",
      "isreaded": true
    },
    {
      "isonline": false,
      "name": "tamil",
      "message": "tomarrow in thia ",
      "time": "Yesterday",
      "unreadmessage": "3",
      "isreaded": false
    },
    {
      "isonline": true,
      "name": "mathu",
      "message": "hoa ",
      "time": "Yesterday",
      "unreadmessage": "",
      "isreaded": true
    },
    {
      "isonline": true,
      "name": "buvanesh",
      "message": "hi the  ",
      "time": "Yesterday",
      "unreadmessage": "3",
      "isreaded": false
    },
    {
      "isonline": true,
      "name": "kamesh",
      "message": "hi the  how are you in the main",
      "time": "Yesterday",
      "unreadmessage": "",
      "isreaded": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.whitecolor,
      appBar: appbar(
        title: "",
        func: () {},
        white: true,
        color: Constants.whitecolor,
        bgColor: Constants.redColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Constants.redColor,
            child: TextFIeldWithCircele(
              controller: controller,
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) => Column(
                children: [
                  OnlineProfilePhoto(
                    isonline: data[index]["isonline"]),
                  const Text(
                    "Leslie",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 150,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) => MessageContainer(
                      isonline: data[index]["isonline"],
                      name: data[index]["name"],
                      message: data[index]["message"],
                      unreadmessage: data[index]["unreadmessage"],
                      isreaded: data[index]["isreaded"],
                      time: data[index]["time"],
                    )),
          ),
          //
        ]),
      ),
    );
  }
}
