import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/items_container.dart';
import '../Widgets/kitchen_container.dart';

class NewCart extends StatefulWidget {
  const NewCart({super.key});

  @override
  State<NewCart> createState() => _NewCartState();
}

class _NewCartState extends State<NewCart> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
        title: "Cart",
        func: () {},
        color: Constants.balckcolor,
        bgColor: Constants.bacgroundcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(255, 243, 234, 1)
              ])),
              child: Text(
                "Whoa. you have a healthy lunch here! (${date})",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const KitchenContainer(
              kitchenName: "Sheya's Kitchen",
              kitchenType: 'South indian',
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "items",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Constants.balckcolor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const ItemsContaner(),
            ),
            // const  Spacer(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 2, bottom: 20),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Icon(Icons.add),
                ),
                label: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("ADD MORE ITEMS"),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.redColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    // minimumSize: Size(40, 40)
                    maximumSize: Size(200, 60)),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Row(
            //     children: [
            //       Icon(
            //         Icons.add,
            //         color: Constants.balckcolor,
            //       ),
            //       Text("ADD MORE ITEMS")
            //     ],
            //   ),
            //   style: ElevatedButton.styleFrom(
            //     maximumSize: Size(100, 30)
            //   ),
            // )
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Constants.whitecolor),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        "Special Instructions",
                        style: TextStyle(
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SearchBar(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Constants.whitecolor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 20),
                          child: Text(
                            "Delivery Timeslot",
                            style: const TextStyle(
                                color: Constants.balckcolor,
                                fontWeight: FontWeight.w700,
                                fontSize: 15),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: const TextStyle(
                                color: Constants.brown,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Constants.brown,
                          ),
                        ),
                        Text("aksklsamcklamcsklmclcams askmcklsamcklckacck",
                        
                        maxLines: 2,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
