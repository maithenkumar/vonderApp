import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class SuccessFullButton extends StatelessWidget {
  const SuccessFullButton({super.key, required this.status});
final int status;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "SUCCESS",
                            style: TextStyle(
                              color: Constants.whitecolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  status>=1?Constants.greencolor:Constants.balckcolor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                          ),
                        ),
        ),Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "SUCCESS",
                            style: TextStyle(
                              color: Constants.whitecolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: status>=2?Constants.greencolor:Constants.balckcolor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                          ),
                        ),
        ),Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "SUCCESS",
                            style: TextStyle(
                              color: Constants.whitecolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: status>=3?Constants.greencolor:Constants.balckcolor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                          ),
                        ),
        ),Padding(
          padding: const EdgeInsets.only(top: 50),
          child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "SUCCESS",
                            style: TextStyle(
                              color: Constants.whitecolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  status>=4?Constants.greencolor:Constants.balckcolor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                          ),
                        ),
        ),
      ],
    );
  }
}