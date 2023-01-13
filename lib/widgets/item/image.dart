// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

import '../../models/item/item.dart';

class ItemImage extends StatefulWidget {
  const ItemImage(
      {Key? key,
      required this.item,
      this.scale = 1,
      this.ignoreItemDimensions = false,
      this.showTooltip = true})
      : super(key: key);
  final Item item;
  final double scale;
  final bool ignoreItemDimensions;
  final bool showTooltip;

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

    var image = Image.network(
      widget.item.imageUrl,
      width: width,
      height: height,
      fit: BoxFit.fill,
    );

    return widget.showTooltip
        ? Tooltip(
            message: widget.item.name + "\n" + widget.item.description,
            preferBelow: false,
            verticalOffset: height / 2,
            child: image)
        : image;
  }
}
