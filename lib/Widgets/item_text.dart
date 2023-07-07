import 'package:flutter/material.dart';

class ItemText extends StatelessWidget {
  const ItemText({super.key, required this.itemCount, required this.fun});
  final int itemCount;
final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   width: 20,
        //   height: 10,
        //   child: const TextField(
        //     style: TextStyle(
        //       fontSize: 15,
        //       fontWeight: FontWeight.bold,
        //     ),
        //     decoration: InputDecoration(
        //       border: InputBorder.none,
        //     ),
        //   ),
        // );

        GestureDetector
        (
          onTap: fun,
          child: Text(
              "$itemCount",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
        );
  }
}
