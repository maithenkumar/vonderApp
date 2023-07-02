import 'package:flutter/material.dart';

class CheakBox extends StatefulWidget {
  const CheakBox({super.key});

  @override
  State<CheakBox> createState() => _CheakBoxState();
}

class _CheakBoxState extends State<CheakBox> {
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }
                          );
  }
}