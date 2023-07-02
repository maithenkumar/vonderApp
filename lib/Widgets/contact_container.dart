import 'package:flutter/material.dart';

import '../Costants/constants.dart';

class ContactCntainer extends StatelessWidget {
  const ContactCntainer({super.key, required this.headText, required this.icon});
final String  headText;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          decoration: BoxDecoration(
            color: Constants.whitecolor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [  GestureDetector(
                onTap: () {
               
                },
                child:  Icon(
                  icon,
                  color: Constants.othercolor,
                  size: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                 headText,
                  maxLines: 2,
                  style: TextStyle(
                      color: Constants.balckcolor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
    
            ],
          )),
    );
  }
}