// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:arelith_crafting/widgets/item_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../routes/router.gr.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        child: Column(
          children: [
            Text(item.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemImage(item: item),
                IconButton(
                    onPressed: () {
                      context.router.push(AddEditItemRoute(
                          editedItemDocumentId: item.documentId));
                    },
                    icon: Icon(Icons.edit)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
