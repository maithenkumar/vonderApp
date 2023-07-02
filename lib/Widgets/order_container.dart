import 'package:flutter/material.dart';

class Order_Container extends StatelessWidget {
  const Order_Container(
      {super.key,
      required this.foodName,
      required this.cost,
      required this.itemNum,
      required this.id,
      required this.food_type,
      this.completed = false});
  final String foodName;
  final String cost;
  final int itemNum;
  final String id;
  final String food_type;
  final bool completed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                food_type,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              completed == true
                  ? Text(
                      "Completed",
                      style: TextStyle(color: Colors.green),
                    )
                  : Text('')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey,
            height: 10,
            endIndent: 12,
            indent: 12,
            thickness: 0.5,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(174, 176, 179, 1),
                    borderRadius: BorderRadius.circular(12)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${foodName}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            "\$ ${cost}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "|   ${itemNum} Items",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: TextSpan(
                    text: "#${id}",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Take Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(139, 38),
                        backgroundColor: Color.fromRGBO(255, 118, 34, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "cancel",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(139, 38),
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: Color.fromRGBO(255, 118, 34, 1),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
