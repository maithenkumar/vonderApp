import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class CartContainer extends StatefulWidget {
  const CartContainer({super.key, required this.dishname, required this.price});
  final String dishname;
  final String price;

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  int itCount=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constants.greyColor),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      widget.dishname,
                      style: const TextStyle(
                          color: Constants.balckcolor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Constants.balckcolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {

                               setState(() {
                                 
                                  itCount<0?itCount--:itCount=1;
                               });
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 55, 61, 66),
                                  shape: const CircleBorder()),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                    color: Constants.whitecolor, fontSize: 20),
                              ),
                            ),
                             Text(
                              "$itCount",
                              style: const TextStyle(
                                fontSize: 20,
                                color: Constants.whitecolor,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  itCount++;
                                });
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 55, 61, 66),
                                  shape: const CircleBorder()),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                    color: Constants.whitecolor, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Text(
                widget.price,
                style: const TextStyle(
                  color: Constants.greencolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        const   SizedBox(height: 10,),
          Divider(
            color: const Color.fromARGB(255, 172, 152, 152),
          ),
        const   SizedBox(height: 30,)
        ],
        
      ),
    );
  }
}
