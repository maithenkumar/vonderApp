import 'package:flutter/material.dart';

import 'items_container.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              
              itemCount: 3,
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const ItemsContaner(),
              ),);
  }
}