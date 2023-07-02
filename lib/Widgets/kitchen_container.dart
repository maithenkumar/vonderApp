import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class KitchenContainer extends StatelessWidget {
  const KitchenContainer({super.key, required this.kitchenName, required this.kitchenType});
final String kitchenName;
final String kitchenType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Constants.whitecolor),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Constants.greyColor,
                      blurRadius: 2,
                      spreadRadius: 1)
                ],
                border: Border.all(
                  color: Constants.bacgroundcolor,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage("../assets/images/image.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kitchenName,
                    style: const  TextStyle(
                      color: Constants.balckcolor
                      ,fontSize: 15,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                   Text(
                    kitchenType,
                    style: const TextStyle(
                      color: Constants.greyColor
                      ,fontSize: 12,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
