// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../routes/router.gr.dart';

class ItemImage extends StatefulWidget {
  const ItemImage({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  State<ItemImage> createState() => _itemImageState();
}

class _itemImageState extends State<ItemImage> {
  double baseSize = 40;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          // context.router
          //     .push(RecipeRoute(rootItemDocumentId: widget.item.documentId));
          context.router
              .push(AddEditItemRoute(editedItemDocumentId: widget.item.documentId));
        },
        child: Tooltip(
          message: widget.item.name,
          preferBelow: false,
          child: Container(
              width: baseSize,
              height: baseSize,
              child: Image.network(widget.item.imageUrl)),
        ));
  }
}
