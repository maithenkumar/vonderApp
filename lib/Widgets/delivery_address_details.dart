import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

// ignore: must_be_immutable
class DeliveryAddressDeatails extends StatelessWidget {
  DeliveryAddressDeatails(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  IconData icon = Icons.home;
  @override
  Widget build(BuildContext context) {
    if (title == "Office") {
      icon = Icons.work_outline_rounded;
    }
    if (title == "others") {
      icon = Icons.keyboard_option_key_sharp;
    }
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Constants.light_grey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Constants.whitecolor,
                  borderRadius: BorderRadius.circular(40)),
              child: Icon(
                icon
                // title=="Office"?Icons.work_outline_outlined:Icons.home_outlined,
                ,
                color: Constants.redColor,
                size: 40,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Constants.balckcolor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        subTitle,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Constants.greyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_calendar_outlined,
                  color: Constants.redColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_forever_outlined,
                  color: Constants.redColor,
                ))
          ],
        ),
      ),
    );
  }
}
