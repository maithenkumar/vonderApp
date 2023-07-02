import 'package:flutter/material.dart';

class Notifai extends StatefulWidget {
  const Notifai({super.key});

  @override
  State<Notifai> createState() => _NotifaiState();
}

class _NotifaiState extends State<Notifai> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: 
    (context, index) => notification_container(),
    itemCount: 7,);
  }

  Container notification_container() {
    return Container(
    margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        children: [
          Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
          CircleAvatar(
            maxRadius: 30,
            backgroundColor: Color.fromRGBO(152, 168, 184, 1),
          ),
          const Padding(
            padding:  EdgeInsets.only(left: 10),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tanbir Ahmed",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(50, 52, 62, 1)),
                  ),
                  Text(
                    "new order",
                    style: TextStyle(
                        fontSize: 13, color: Color.fromRGBO(156, 155, 166, 1)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "20 min ago",
                      style: TextStyle(
                          fontSize: 10, color: Color.fromRGBO(156, 155, 166, 1)),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "place a ",
              style: TextStyle(
                  fontSize: 13, color: Color.fromRGBO(156, 155, 166, 1)),
            ),
          ),
    const   Spacer(),
          Container(
            height: 54,
            width: 53,
            decoration: BoxDecoration(
                color: Color.fromRGBO(152, 168, 184, 1),
                borderRadius: BorderRadius.circular(12)),
          ),
     
    ],
  ),
  const  Divider(
     thickness: 0.1,
     
      )
        ],
      ));
  }
}
