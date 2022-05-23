// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../models/item.dart';
import '../services/database_service.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    double _baseSize = 40;

    return Row(
      children: [
        Container(
          width: _baseSize,
          height: _baseSize,
          child: FutureBuilder(
            future: DatabaseService().getImageUrl(item.imageUrl),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return snapshot.hasData
                  ? Image.network(
                      snapshot.data,
                    )
                  : CircularProgressIndicator();
            },
          ),
        ),
        Column(
          children: [
            Text(item.name),
            Text(item.description),
          ],
        ),
      ],
    );
  }
}
