// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../routes/router.gr.dart';

class ItemImage extends StatefulWidget {
  const ItemImage({Key? key, required this.item, this.scale = 1})
      : super(key: key);
  final Item item;
  final double scale;

  @override
  State<ItemImage> createState() => _itemImageState();
}

class _itemImageState extends State<ItemImage> {
  final double _baseSize = 40;

  @override
  Widget build(BuildContext context) {
    double size = _baseSize * widget.scale;

    return TextButton(
        onPressed: () {
          context.router
              .push(RecipeRoute(rootItemDocumentId: widget.item.documentId));
        },
        child: Tooltip(
          message: widget.item.name,
          preferBelow: false,
          child: Image.network(
            widget.item.imageUrl,
            width: size * widget.item.width,
            height: size * widget.item.height,
            fit: BoxFit.fill,
          ),
        ));
  }
}
