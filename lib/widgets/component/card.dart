// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../models/component/component_item.dart';
import '../item/image.dart';
import '../styled_elevated_button/circle_elevated_button.dart';

class ComponentCard extends StatefulWidget {
  ComponentCard({Key? key, required this.component, this.visible = true})
      : super(key: key);

  ComponentItem component;
  bool visible;

  @override
  State<ComponentCard> createState() => _ComponentCardState();
}

class _ComponentCardState extends State<ComponentCard> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: Padding(
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
                  Text(widget.component.item.name),
                  ItemImage(
                    item: widget.component.item,
                    scale: 0.5,
                  ),
                  Row(
                    children: [
                      CircleElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (widget.component.quantity > 0) {
                                widget.component = widget.component.copyWith(
                                    quantity: widget.component.quantity - 1);
                              }
                            });
                          },
                          color: Colors.red,
                          child: Icon(Icons.horizontal_rule)),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: Center(
                            child: Text(widget.component.quantity.toString())),
                      ),
                      CircleElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.component = widget.component.copyWith(
                                  quantity: widget.component.quantity + 1);
                            });
                          },
                          color: Colors.green,
                          child: Icon(Icons.add)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
