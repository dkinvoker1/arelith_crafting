// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ArelithTextFormField extends StatefulWidget {
  ArelithTextFormField({
    Key? key,
    required this.name,
    this.initialValue,
    required this.onSaved,
  }) : super(key: key);

  final String name;
  final void Function(String? newValue) onSaved;

  final String? initialValue;

  @override
  State<ArelithTextFormField> createState() => _ItemTextFieldState();
}

class _ItemTextFieldState extends State<ArelithTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: widget.initialValue,
        onSaved: widget.onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Insert ${widget.name}';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: widget.name,
        ),
      ),
    );
  }
}
