import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class ApplyCouponsContainer extends StatelessWidget {
  const ApplyCouponsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Constants.whitecolor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Constants.veryLightColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5))),
                ),
              ),
              Text(
                "Apply Coupons",
                style: TextStyle(
                    color: Color.fromARGB(255, 33, 149, 243),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    letterSpacing: 1),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Color.fromARGB(255, 33, 149, 243),
              )
            ],
          ),
        ],
      ),
    );
  }
}
