import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/apbar.dart';

import '../Widgets/qr_container.dart';

class PersnolQrCodeScannerPage extends StatefulWidget {
  const PersnolQrCodeScannerPage({super.key});

  @override
  State<PersnolQrCodeScannerPage> createState() =>
      _PersnolQrCodeScannerPageState();
}

class _PersnolQrCodeScannerPageState extends State<PersnolQrCodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      appBar: appbar(
        fronticon: false,
        title: "Your personal QR",
        func: () {},
        color: Constants.balckcolor,
        bgColor: Constants.bacgroundcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
     const  Padding(
        padding:  EdgeInsets.only(left: 30,right: 30),
        child: OrContainer(),
      ), Padding(
        padding:  EdgeInsets.only(top: 20),
        child: Text("""Show the QR code to the client, print it out 
                     or take a screenshot""",
      style: TextStyle(color: Constants.balckcolor,
      fontSize: 14,
       fontWeight: FontWeight.w400,
       
      ),),
      )
          ],
        ),
      ),
    );
  }
}
