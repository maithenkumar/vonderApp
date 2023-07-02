import 'package:flutter/material.dart';

import '../Costants/constants.dart';

AppBar appbar(
    {required String title,
    required VoidCallback func,
    required Color color,
    required Color bgColor,
    String acttext = "",
    bool fronticon = true,
    var iconsize=16,
    IconData icon =Icons.arrow_forward_ios_outlined,
    bool acticon = false}) {
  return AppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.only(
          top: 18,
        ),
        child: Text(
          acttext,
          style: const TextStyle(
            fontSize: 16,
            color: Constants.balckcolor,
          ),
        ),
      ),
      acticon == true
          ?  Padding(
            padding:  const EdgeInsets.only(right: 20),
            child: Icon(
                icon,
                color: Constants.balckcolor,
                size: iconsize,
              ),
          )
          : const Text("")
    ],
    centerTitle: true,
    leading: fronticon == true
        ? Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: OutlinedButton(
              onPressed: func,
              style: IconButton.styleFrom(
                  minimumSize: const Size(30,  20),
                  // maximumSize: const Size(20, 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Constants.balckcolor,
                  size: 20,
                ),
              ),
            ),
          )
        : Text(""),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    ),
    backgroundColor: bgColor,
    elevation: 0,
  );
  
}
