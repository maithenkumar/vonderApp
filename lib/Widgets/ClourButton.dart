import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClourButton extends StatelessWidget {
  ClourButton({
    super.key,
    required this.fnSize,
     required this.height,
    required this.fun,
    required this.btmnText,
    required this.textColor, required this.btnColor,
  });
  final VoidCallback fun;
  final String btmnText;
  final Color textColor;
  var fnSize = 24.0;
  var height = 50.0;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
    
        onPressed: fun,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
    minimumSize: Size(double.infinity, height),
    backgroundColor: btnColor
        ),
        child: Text(
          btmnText,
          style: TextStyle(
            color: textColor,
            fontSize: fnSize,
          ),
        ),
      ),
    );
  }
}
