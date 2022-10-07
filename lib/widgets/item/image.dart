// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

import '../../models/item.dart';

class ItemImage extends StatefulWidget {
  const ItemImage(
      {Key? key,
      required this.item,
      this.scale = 1,
      this.ignoreItemDimensions = false})
      : super(key: key);
  final Item item;
  final double scale;
  final bool ignoreItemDimensions;

  @override
  State<ItemImage> createState() => _itemImageState();
}

class _itemImageState extends State<ItemImage> {
  final double _baseSize = 40;

  @override
  Widget build(BuildContext context) {
    double size = _baseSize * widget.scale;
    double width =
        widget.ignoreItemDimensions ? size : size * widget.item.width;
    double height =
        widget.ignoreItemDimensions ? size : size * widget.item.height;

    return Tooltip(
      message: widget.item.name,
      preferBelow: false,
      child: Image.network(
        widget.item.imageUrl,
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }
}
