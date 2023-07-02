import 'package:flutter/material.dart';

import '../Costants/constants.dart';
import '../Widgets/contact_container.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key, required this.headText});
  final String headText;

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List data = [
    {"headText": "WhatsApp", "icon": Icons.wechat_sharp},
    {"headText": "Website", "icon": Icons.browse_gallery_outlined},
    {"headText": "FaceBook", "icon": Icons.facebook},
    {"headText": "Twitter", "icon": Icons.wb_twilight_outlined},
    {"headText": "Instagram", "icon": Icons.insert_page_break},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: [
          for (int i = 0; i < data.length; i++) ...{
            ContactCntainer(
              headText: data[i]["headText"],
              icon: data[i]["icon"],
            )
          }
        ],
      ),
    );
  }
}
