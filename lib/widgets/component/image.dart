// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

import '../../models/component/component_item.dart';
import '../item/image.dart';

class ComponentImage extends StatefulWidget {
  const ComponentImage({
    Key? key,
    required this.component,
  }) : super(key: key);

  final ComponentItem component;

  @override
  State<ComponentImage> createState() => _componentImageState();
}

class _componentImageState extends State<ComponentImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Stack(
          children: [
            ItemImage(item: widget.component.item),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      (widget.component.quantity).toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
