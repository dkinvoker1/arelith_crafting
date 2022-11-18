// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../models/component/component_item.dart';
import '../../routes/router.gr.dart';
import '../item/image.dart';

class ComponentImageButton extends StatefulWidget {
  const ComponentImageButton({
    Key? key,
    required this.component,
    required this.multiplier,
  }) : super(key: key);

  final ComponentItem component;
  final int multiplier;

  @override
  State<ComponentImageButton> createState() => _componentImageButtonState();
}

class _componentImageButtonState extends State<ComponentImageButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
            context.router.push(RecipeRoute(
                rootItemDocumentId: widget.component.item.documentId));
          },
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
                          (widget.component.quantity * widget.multiplier)
                              .toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
