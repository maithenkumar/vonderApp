import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class OrContainer extends StatelessWidget {
  const OrContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Constants.whitecolor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 205, 221, 236),
            spreadRadius: 2,
            blurRadius: 20

          )
        ]
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Container(
            // height: 100,
            // width: 100,
            // decoration: BoxDecoration(
            //   image: DecorationImage(image:
            //   AssetImage("../assets/images/qr.png"),
            //   fit: BoxFit.cover)
            // ),
            child:
                Image.asset("../assets/images/qr.png", fit: BoxFit.fitHeight),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30 ,top: 20),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: const Color.fromARGB(255, 37, 151, 245),
                            )),
                        child: const Icon(
                          Icons.print_outlined,
                          size: 25,
                          color: Color.fromARGB(255, 37, 151, 245),
                        ),
                      ),
                      const Text(
                        "PRINT",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 37, 151, 245),
                        ),
                      )
                    ],
                  ),
                ),
            const     Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30,top: 20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: const Color.fromARGB(255, 37, 151, 245),
                            )),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.share_outlined,
                          size: 25,
                          color: Color.fromARGB(255, 37, 151, 245),
                        ),
                      ),
                    const   Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 37, 151, 245),
                        ),
                      )
                    ],
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
