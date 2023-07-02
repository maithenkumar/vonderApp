import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class CheakMailBox extends StatelessWidget {
  const CheakMailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Constants.whitecolor
      ),
      padding:const  EdgeInsets.all(19),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.verified ,color: Constants.redColor,))
       
       
       ,const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email",style: TextStyle(
            color: Constants.redColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,

          ),),
           Text("T******@gmail.com",style: TextStyle(
            color: Constants.greyColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            
          ),)
        ],
       ),
    const    Spacer(),
    const Padding(
      padding:  EdgeInsets.only(top: 5),
      child:     Icon(Icons.mail_outline_outlined,color: Constants.greyColor, ),
    )
        ],
      ),
    );
  }
}