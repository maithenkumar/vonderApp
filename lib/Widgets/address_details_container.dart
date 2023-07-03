import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class AddressDetailsContainer extends StatelessWidget {
  const AddressDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    "Delivery Address",
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
                        decoration: TextDecoration.underline,
                        color: Constants.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Constants.greyColor,
                    width: 2),
                    borderRadius: BorderRadius.circular(13)
                  ),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Constants.brown,
                    size: 30,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                      """Compressing object://github.com/maithenkumar/vonderApp.gi""",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          color: const Color.fromARGB(255, 91, 101, 110)),
                      maxLines: 3,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
