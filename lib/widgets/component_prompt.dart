// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../models/item.dart';

class ComponentPrompt extends StatefulWidget {
  ComponentPrompt({Key? key, required this.item}) : super(key: key);

  Item item;

  @override
  State<ComponentPrompt> createState() => _ComponentPromptState();
}

class _ComponentPromptState extends State<ComponentPrompt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Text(widget.item.name)),
    );
  }
}
