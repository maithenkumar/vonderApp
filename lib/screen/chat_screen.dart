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
     
      "name": "",
      "message": "hi the  how are you in the main",
      "time": "Yesterday",
      "unreadmessage": "3"
      ,"isreaded":true
    }
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
              itemCount: 10,
              itemBuilder: (context, index) => Column(
                children: [
                  OnlineProfilePhoto(isonline: data[0]["isonline"]),
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
                itemCount: 10,
                itemBuilder: (context, index) => MessageContainer(
                    
                      isonline: data[0]["isonline"],
                      name: data[0]["name"],
                      message: data[0]["message"],
                     
                      unreadmessage: data[0]["unreadmessage"],
                      isreaded: data[0]["isreaded"],
                      time:  data[0]["time"],
                    )),
          ),
          //
        ]),
      ),
    );
  }
}
