import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/address_details_container.dart';
import '../Widgets/apply_coupons_container.dart';
import '../Widgets/instruction_textfield.dart';
import '../Widgets/items_container.dart';
import '../Widgets/kitchen_container.dart';
import '../Widgets/receipt_container.dart';

class NewCart extends StatefulWidget {
  const NewCart({super.key});

  @override
  State<NewCart> createState() => _NewCartState();
}

class _NewCartState extends State<NewCart> {
  DateTime date = DateTime.now();
  TextEditingController controller = TextEditingController();

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
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 14,
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
            ListView.builder(
              itemCount: 3,
              
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: const ItemsContaner(),
              ),
            ),
            // const  Spacer(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2,
                bottom: 20,
              ),
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
                    maximumSize: Size(200, 100)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Constants.whitecolor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        "Special Instructions",
                        style: TextStyle(
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.w900,
                            fontSize: 17),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InstructionTextFiled(
                          controller: controller,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: const AddressDetailsContainer(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 1),
              child: Container(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                decoration: BoxDecoration(
                    color: Constants.whitecolor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Delivery Timeslot",
                          style: TextStyle(
                            color: Constants.balckcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Lunch",
                          style: TextStyle(
                              color: Constants.balckcolor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Constants.greyColor)),
                            child: Center(
                              child: Icon(
                                Icons.sunny,
                                color: Constants.orangecolor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("04:44 PM"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color.fromRGBO(255, 255, 255, 1),
                        Color.fromRGBO(255, 243, 234, 1)
                      ])),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.fire_truck_outlined,
                              color: Constants.brown,
                              size: 30,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10,bottom: 20),
                              child: Text(
                                "Restarted application in 238ms.Restarted application in 238ms.Restarted ion in 238ms. Restarted application in 238ms. Restarted application in 238ms. THIS IS ANOTHER VAC",
                                maxLines: 6,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: .2,
                                    color: Color.fromRGBO(146, 100, 65, 1)),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ApplyCouponsContainer(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: ReceiptContainer(),
            )
          ],
        ),
      ),
    );
  }
}
