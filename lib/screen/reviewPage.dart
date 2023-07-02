// ignore: file_names
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
//  DateFormat format = DateFormat.yMd('ar');
//  String dateString =  format.format(DateTime.now());//format.format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    Map details = {
      "data": [
        {
          "date": "",
          'title': 'Great Food and Service',
          "details": """This Food so tasty & delicious. Breakfast 
so fast Delivered in my place. Chef is very 
friendly. I’m really like chef for Home Food 
Order. Thanks. """
        },
        {
          "date": "",
          'title': 'Awesome and Nicee',
          "details": """This Food so tasty & delicious. Breakfast 
so fast Delivered in my place. . """
        },
        {
          "date": "",
          'title': 'Awesome and Nice',
          "details": """This Food so tasty & delicious. """
        },
        {
          "date": "",
          'title': 'Great Food and Service',
          "details": """This Food so tasty & delicious. Breakfast 
so fast Delivered in my place. Chef is very 
friendly. I’m really like chef for Home Food 
Order. Thanks. """
        }
      ]
    };
    List _data = details["data"];
 
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
          title: "Reviews",
          func: () {},
          color: Constants.balckcolor,
          bgColor: Constants.bacgroundcolor),
      body: ListView(
        children: [
          for (int i = 0; i < _data.length; i++) ...[
            ReviewContainer(
              title: _data[i]["title"],
              subdetails: _data[i]["details"],
            )
          ]
        ],
      ),
    );
  }
}

class ReviewContainer extends StatelessWidget {
  final String title;
  final String subdetails;

  const ReviewContainer({
    super.key,
    required this.title,
    required this.subdetails,
  });

  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            maxRadius: 25,
            backgroundColor: Color.fromRGBO(152, 168, 184, 1),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Constants.whitecolor,
              ),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "${formattedDate.toString()}",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(156, 155, 166, 1)),
                      ),
                      Icon(Icons.more_horiz_outlined)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "$title",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 109, 58, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 109, 58, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 109, 58, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 109, 58, 1),
                      ),
                      Icon(
                        Icons.star_border_purple500_outlined,
                        color: Color.fromRGBO(251, 109, 58, 1),
                      )
                    ],
                  ),
                  Text("$subdetails")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// intl DateFormat