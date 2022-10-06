// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:arelith_crafting/widgets/item_image.dart';
import 'package:arelith_crafting/widgets/styled/circle_elevated_button.dart';
import 'package:flutter/material.dart';

import '../models/component_item.dart';

class ComponentCard extends StatefulWidget {
  ComponentCard({Key? key, required this.component}) : super(key: key);

  ComponentItem component;

  @override
  State<ComponentCard> createState() => _ComponentCardState();
}

class _ComponentCardState extends State<ComponentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child:
                      Center(child: Text(widget.component.quantity.toString())),
                ),
                ItemImage(
                  item: widget.component.item,
                  scale: 0.5,
                ),
                Text(widget.component.item.name),
                Row(
                  children: [
                    CircleElevatedButton(
                        onPressed: () {
                          setState(() {
                            widget.component = widget.component.copyWith(
                                quantity: widget.component.quantity + 1);
                          });
                        },
                        color: Colors.green,
                        child: Icon(Icons.add)),
                    CircleElevatedButton(
                        onPressed: () {
                          setState(() {
                            widget.component = widget.component.copyWith(
                                quantity: widget.component.quantity - 1);
                          });
                        },
                        color: Colors.red,
                        child: Icon(Icons.horizontal_rule)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
