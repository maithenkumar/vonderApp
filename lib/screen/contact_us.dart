import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widgets/contact_container.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key, });


  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List data = [
    // {"headText": "WhatsApp", "icon": Icons.wechat_sharp},
    // {"headText": "Website", "icon": Icons.browse_gallery_outlined},
    // {"headText": "FaceBook", "icon": Icons.facebook},
    // {"headText": "Twitter", "icon": Icons.wb_twilight_outlined},
    // {"headText": "Instagram", "icon": Icons.insert_page_break},

    {
      "url": "https://www.facebook.com",
      "name": "@MahaBhojanam",
      "icon":  Icons.facebook
    },
    {
      "url": "https://wa.me/916382775774",
      "name": "MAHA BHOJANAM",
      "icon":Icons.wechat_sharp
    },
    {
      "url": "https://www.youtube.com/channel/@mahabhojanam",
      "name": "Maha Bhojanam",
      "icon": Icons.youtube_searched_for
    },
    {
      "url": "https://www.instagram.com/mahabhojanam",
      "name": "@mahabhojanam",
      "icon": Icons.insert_page_break
    },
    {
      "url": "https://www.youtube.com/channel/@saaptakaasu",
      "name": "Saapta Kaasu",
      "icon":Icons.youtube_searched_for
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: [
          for (int i = 0; i < data.length; i++) ...{
            ContactCntainer(
              headText: data[i]["name"],
              icon: data[i]["icon"], fun: () { 
              
               }, url: data[i]["url"],
            )
          }
        ],
      ),
    );
  }
}
