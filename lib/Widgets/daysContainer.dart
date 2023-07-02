import 'package:flutter/material.dart';
import 'days30.dart';

class DateContainer extends StatefulWidget {
  const DateContainer({
    super.key,
    required this.date,
    required this.function,
    required this.index,
    required this.bagColor,
    required this.txtColor,
    required this.istab,
  });
  final DateTime date;
  final VoidCallback function;
  final int index;
  final Color bagColor;
  final Color txtColor;
  final bool istab;

 
  @override
  State<DateContainer> createState() => _DateContainerState();
}

class _DateContainerState extends State<DateContainer> {
  
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 8, top: 8),
      child: Stack(children: [
        Padding(
            padding: const EdgeInsets.all(5),
            child: Day30(
              date: widget.date,
        
              bagColor: widget.bagColor,
              txtColor: widget.txtColor,
              
            )),
        Positioned(
          left: 50,
          bottom: 62,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                "${widget.index}",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
