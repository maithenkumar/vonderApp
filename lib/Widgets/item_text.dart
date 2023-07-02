import 'package:flutter/material.dart';

class ItemText extends StatefulWidget {
  const ItemText({super.key, required this.itemCount});
  final int itemCount;

  @override
  State<ItemText> createState() => _ItemTextState();
}

class _ItemTextState extends State<ItemText> {
  @override
  Widget build(BuildContext context) {
    return Text(
                            "${widget.itemCount}",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          );
                         
  }
}