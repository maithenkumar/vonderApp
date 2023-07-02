
import 'package:flutter/material.dart';


class CommentBox extends  StatelessWidget{


  const CommentBox({super.key, required this.controller});
final TextEditingController controller;

// final Controller commentBox=Get.put(Controller());

  

  @override
  Widget build(BuildContext context) {
    return 
       Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextField(
      controller:controller ,
      
        maxLines: 4,
      autofocus: false,
      style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
      decoration: InputDecoration(
        filled: true,
        
        fillColor: Colors.white,
        hintText: 'Additional comments...',
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
      ),
      ),
    )
    ;
  }
}