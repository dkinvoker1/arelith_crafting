// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    double _baseSize = 40;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white)
        ),
        child: Row(
          children: [
            Container(
              width: _baseSize,
              height: _baseSize,
              child: 
              Image.network(item.imageUrl)
            ),
            Column(
              children: [
                Text("Name:"),
                Text(item.name),
                Text("Description:"),
                Text(item.description),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
