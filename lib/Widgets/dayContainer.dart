// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:order_app/Widgets/daysColoum.dart';

// class DayContainer extends StatefulWidget {
//   const DayContainer({super.key, required this.bagColor, required this.txtColor, required this.istab, required this.date});
//    final Color bagColor;
//   final Color txtColor;
//   final bool istab;
//    final DateTime date;

//   @override
//   State<DayContainer> createState() => _DayContainerState();
// }

// class _DayContainerState extends State<DayContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//                 width: 50,
//                 height: 70,
//                 decoration: BoxDecoration(
//                   color:widget.istab==true?  Color.fromRGBO(255, 118, 34, 1):null,
//                   border:  widget.istab==false? Border.all(
//                       color: Color.fromRGBO(255, 118, 34, 1), width: 2):null,
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child:Dayscolumn(bagColor:widget.bagColor, txtColor: widget.txtColor,\date:widget.date)
//               );
//   }
// }