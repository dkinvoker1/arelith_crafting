// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, depend_on_referenced_packages, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../models/item.dart';
import 'image.dart';

class ItemCard extends StatefulWidget {
  ItemCard({Key? key, required this.item, required this.onPressed})
      : super(key: key);

  final Item item;
  final void Function(Offset off, Item item) onPressed;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  var key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        key: key,
        onTap: () {
          if (key.currentContext != null) {
            var renderBox = key.currentContext!.findRenderObject() as RenderBox;
            var x = renderBox.localToGlobal(Offset.zero).dx +
                renderBox.size.width / 2;
            var y = renderBox.localToGlobal(Offset.zero).dy +
                renderBox.size.height / 2;

            widget.onPressed(Offset(x, y), widget.item);
          }
        },
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              Text(widget.item.name),
              ItemImage(
                item: widget.item,
                showTooltip: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
