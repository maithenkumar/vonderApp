
import 'package:flutter/widgets.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/myorderDetailsSteper.dart';

class MyDeatailsExpandedDeatails extends StatelessWidget {
  const MyDeatailsExpandedDeatails({super.key, required this.status});
final int status;
  @override
  Widget build(BuildContext context) {
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyorderSteper(status: status),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const  EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Order placed",
                style: TextStyle(
                  color: status>=1?Constants.balckcolor:Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Order confirmed",
                style: TextStyle(
                  color: status>=2?Constants.balckcolor:Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Order shipped",
                style: TextStyle(
                  color: status>=3?Constants.balckcolor:Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Out for delivery",
                style: TextStyle(
                  color: status>=4?Constants.balckcolor:Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Order delivered",
                style: TextStyle(
                  color: status>=5?Constants.balckcolor:Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ), Spacer(), Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Oct 19 2021",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Oct 20 2021",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "Oct 20 2021",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "pending",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19, left: 10),
              child: Text(
                "pending",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
