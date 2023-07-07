import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class ButtonSum extends StatelessWidget {
  ButtonSum(
      {super.key,
      required this.fun,
      required this.sum,
      required this.color,
      this.texColor = Constants.balckcolor});
  final VoidCallback fun;
  final String sum;
  final Color color;
  Color texColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: fun,
      child: Container(
        // padding: EdgeInsets.all(10),
    
        height: 35,
        width: 35,
        decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: Text(
            sum,
            style: TextStyle(color: texColor, fontSize: 24),
          ),
        ),
    
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: color,
        //     minimumSize: Size(30, 30),
        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //   ),
        //   onPressed: fun,
        //   child: Center(
        //     child: Text(
        //       sum,
        //       style: TextStyle(color: texColor, fontSize: 20),
        //     ),
        //   ),
      ),
    );
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: fun,
      icon: Icon(
        Icons.add,
        color: Colors.red,
      ),
      label: Text(
        sum,
        style: const TextStyle(
            color: Constants.redColor,
            fontSize: 14,
            fontWeight: FontWeight.w700),
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
