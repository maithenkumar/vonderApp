import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class RestarentScreen extends StatefulWidget {
  const RestarentScreen({super.key});

  @override
  State<RestarentScreen> createState() => _RestarentScreenState();
}

class _RestarentScreenState extends State<RestarentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../assets/images/food.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 50),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(200, 152, 168, 184),
                          borderRadius: BorderRadius.circular(50)),
                      // padding:const  EdgeInsets.all(5),
                      child: const Center(
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 40,
                          color: Constants.whitecolor,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                    top: 50,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(200, 152, 168, 184),
                          borderRadius: BorderRadius.circular(50)),
                      // padding:const  EdgeInsets.all(5),
                      child: const Center(
                        child: Icon(
                          Icons.share,
                          size: 40,
                          color: Constants.whitecolor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child:const  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mario italiano",
                  style: TextStyle(
                    color: Constants.balckcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "\$\$-Chinese-indonesian-Deshi food",
                    style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.currency_exchange_sharp,
                        color: Constants.greencolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Free",
                              style: TextStyle(
                                  color: Constants.balckcolor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),  Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Delivery",
                                style: TextStyle(
                                    color: Constants.greyColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      
                      
                      VerticalDivider(
                        color: Constants.balckcolor,
                        endIndent: 1,
                        indent: 1,
                        thickness: 2,
                        width: 1,
                      ),
                          Icon(
                        Icons.share_location,
                        color: Constants.greencolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20 km",
                              style: TextStyle(
                                  color: Constants.balckcolor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),  Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "distance",
                                style: TextStyle(
                                    color: Constants.greyColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ) 
                      
                      ,
                      
                        Icon(
                        Icons.star,
                        color: Constants.greencolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4.3",
                              style: TextStyle(
                                  color: Constants.balckcolor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),  Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "(200+Ratings)",
                                style: TextStyle(
                                    color: Constants.greyColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
