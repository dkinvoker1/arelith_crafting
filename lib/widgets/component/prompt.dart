// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../models/component/component_item.dart';
import '../item/image.dart';
import '../styled_elevated_button/rounded_elevated_button.dart';

class ComponentPrompt extends StatefulWidget {
  ComponentPrompt({Key? key, required this.component, required this.onPressed})
      : super(key: key);

  final void Function() onPressed;
  ComponentItem component;

  @override
  State<ComponentPrompt> createState() => _ComponentPromptState();
}

class _ComponentPromptState extends State<ComponentPrompt> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: RoundedElevatedButton(
          onPressed: widget.onPressed,
          padding: 4,
          color: Colors.lightBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ItemImage(
                  item: widget.component.item,
                  ignoreItemDimensions: true,
                  scale: 0.9,
                ),
              ),
              Text(
                widget.component.quantity.toString(),
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
