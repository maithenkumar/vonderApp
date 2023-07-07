import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Costants/constants.dart';

class ContactCntainer extends StatelessWidget {
   ContactCntainer({super.key, required this.headText, required this.icon, required this.fun, required this.url});
final String  headText;
final IconData icon;
final VoidCallback fun;
final String url;
 

  @override
  Widget build(BuildContext context) {
   
   final Uri _url = Uri.parse(url);
Future<void> _launchUrl() async {
  if (!await launchUrl(_url )) {
    print("some one");
    throw Exception('co Could load this fucnction');
  }
}
    return GestureDetector(

      onTap: _launchUrl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            decoration: BoxDecoration(
              color: Constants.whitecolor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [  Icon(
                icon,
                color: Constants.othercolor,
                size: 20,
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                   headText,
                    maxLines: 2,
                    style:const  TextStyle(
                        color: Constants.balckcolor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
      
              ],
            )),
      ),
    );
  }
}