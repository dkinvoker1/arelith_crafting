// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../models/item.dart';
import '../../routes/router.gr.dart';
import 'image.dart';

class ItemImageButton extends StatefulWidget {
  const ItemImageButton(
      {Key? key,
      required this.item,})
      : super(key: key);
  final Item item;

  @override
  State<ItemImageButton> createState() => _itemImageButtonState();
}

class _itemImageButtonState extends State<ItemImageButton> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.router
              .push(RecipeRoute(rootItemDocumentId: widget.item.documentId));
        },
        child: ItemImage(item: widget.item));
  }
}
