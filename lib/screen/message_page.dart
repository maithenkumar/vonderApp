import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Message_Container(),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class Message_Container extends StatelessWidget {
   Message_Container({super.key });
 var isonline=false;
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: CircleAvatar(child: Padding(
                    padding: const EdgeInsets.only(left: 25,top: 20,bottom: 5),
                    child:isonline==true? Container(
                    
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                         color: Color.fromRGBO(26, 213, 43, 1),
                        border: Border.all(color: Colors.white,width: 2)
                        ,borderRadius: BorderRadius.circular(8)
                      ),
                    ):Container(
                    
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                         color: Color.fromRGBO(156, 155, 166, 1),
                        border: Border.all(color: Colors.white,width: 2)
                        ,borderRadius: BorderRadius.circular(8)
                      ),
                    )
                  ),
                    backgroundColor: Color.fromRGBO(152, 168, 184, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Royal Parvej",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          "sounds awesome",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Text(
                        "19:90",
                        style: TextStyle(color: Colors.black, fontSize: 9),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(backgroundColor: (Color.fromRGBO(255, 118, 34, 1 ))
                                        ,
                          shape: CircleBorder()),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 0.1,
            )
          ],
        ));
  }
}
