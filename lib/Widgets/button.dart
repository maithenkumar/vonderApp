import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class ButtonSum extends StatelessWidget {
  const ButtonSum(
      {super.key, required this.fun, required this.sum, required this.color});
  final VoidCallback fun;
  final String sum;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              minimumSize: Size(30, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: fun,
            child: Center(
              child: Text(
                sum,
                style:
                    const TextStyle(color: Constants.balckcolor, fontSize: 24),
              ),
            )));
  }
}

class OutlinedButton_ extends StatelessWidget {
  const OutlinedButton_(
      {super.key, required this.fun, required this.sum, required this.color});
  final VoidCallback fun;
  final String sum;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          
          minimumSize: Size(double.maxFinite, 70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: fun,
        icon: Icon(Icons.add,color: Colors.red,),
        label:  Text(
            sum,
            style: const TextStyle(color: Constants.redColor, fontSize: 14,fontWeight: FontWeight.w700),
          ),
        // child: Center(
        //   child: Text(
        //     sum,
        //     style: const TextStyle(color: Constants.redColor, fontSize: 14,fontWeight: FontWeight.w700),
        //   ),
        // ),
        );
  }
}