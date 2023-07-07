import 'package:flutter/material.dart';

import '../Costants/constants.dart';
import 'button.dart';
import 'cheakBox.dart';
import 'item_text.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  
  final TextEditingController _textFieldController = TextEditingController();
  
  String valueText='';
 Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Slecect item Count'),
            content: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() { 
                  valueText = value;
                });
              },
              onSubmitted: (value) {
                if (valueText==null) {
                 return ;
                }
              },
              
              controller: _textFieldController,
              decoration:
                  const InputDecoration(hintText: " Enter count"),
            ),
            actions: <Widget>[
              MaterialButton(
                color: Constants.greyColor,
                textColor: Colors.white,
                child: const Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              MaterialButton(
                color: Constants.redColor,
                textColor: Colors.white,
                child: const Text('OK'),
                onPressed: () {
                  setState(() {
                  
                    valueText.isNotEmpty?Navigator.pop(context):null;
               
                    itemCount=int.parse(valueText);
                
                  });
                },
              ),
            ],
          );
        });
  }

  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Constants.whitecolor,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Constants.simmerWhite,
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Text(
              "Idly with Chicken kuzhambu",
              style: TextStyle(
                  color: Constants.balckcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(),
         
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 5),
            child: ButtonSum(
                fun: () {
                  setState(() {
                    itemCount <= 0 ? itemCount = 0 : itemCount--;
                  });
                },
                sum: "-",
                color: Color.fromARGB(255, 236, 229, 255)),
          ),
          ItemText(
            itemCount: itemCount,
            fun: () {
             _displayTextInputDialog(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ButtonSum(
                fun: () {
                  setState(() {
                    itemCount++;
                  });
                },
                sum: "+",
                color: Constants.brown),
          )
        ],
      ),
    );
  }
}
