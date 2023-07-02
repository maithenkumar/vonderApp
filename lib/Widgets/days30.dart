import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Day30 extends StatefulWidget {
  
  final DateTime date;

  final Color bagColor;
  final Color txtColor;
  
  
   Day30({super.key, required this.date, required this.bagColor, required this.txtColor});

  @override
  State<Day30> createState() => _Day30State();
}

class _Day30State extends State<Day30> {
    bool istab =false;
bool isequal=true;
  @override
  Widget build(BuildContext context) {
    
    return Stack(children: [
         
     SizedBox(
      width: 60,
      height: 80,
      child: GestureDetector(
        onTap: (){
          setState(() {
            
            istab==isequal? istab=false: istab=true;
          });
          

          
        },
        child: Container(
          width: 50,
          height: 70,
          decoration: BoxDecoration(
            color:  istab == true ? Color.fromRGBO(255, 118, 34, 1) :widget.bagColor,
            border:  istab == false
                ? Border.all(color: Color.fromRGBO(255, 118, 34, 1), width: 2)
                : null,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        DateFormat("MMM").format(widget.date),
                        style: TextStyle(
                            color: widget.txtColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "${widget.date.day}",
                        style: TextStyle(
                            color:widget.txtColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        DateFormat("E").format(widget.date),
                        style: TextStyle(
                            color: widget.txtColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
       
        ),
      ),
    ),
        // Padding(
        //     padding: const EdgeInsets.all(5),
        //     child: Day30(
        //       date: widget.date,
        //       function: widget.function,
        //       bagColor: widget.bagColor,
        //       txtColor: widget.txtColor,
              
        //     )),
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
                "${1}",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        )
      ]
    );
      }}
    
    
    
    
//      SizedBox(
//       width: 60,
//       height: 80,
//       child: Container(
//         width: 50,
//         height: 70,
//         decoration: BoxDecoration(
//           color: istab == true ? Color.fromRGBO(255, 118, 34, 1) : null,
//           border: istab == false
//               ? Border.all(color: Color.fromRGBO(255, 118, 34, 1), width: 2)
//               : null,
//           borderRadius: BorderRadius.circular(5),
//         ),
//         child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4.0),
//                     child: Text(
//                       DateFormat("MMM").format(widget.date),
//                       style: TextStyle(
//                           color: widget.txtColor,
//                           fontSize: 10,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4.0),
//                     child: Text(
//                       "${widget.date.day}",
//                       style: TextStyle(
//                           color:widget.txtColor,
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4.0),
//                     child: Text(
//                       DateFormat("E").format(widget.date),
//                       style: TextStyle(
//                           color: widget.txtColor,
//                           fontSize: 10,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               )
 
//       ),
//     );
//   }
// }
