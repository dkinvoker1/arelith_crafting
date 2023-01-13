// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ArelithTextFormField extends StatefulWidget {
  ArelithTextFormField(
      {Key? key,
      required this.name,
      required this.onSaved,
      this.initialValue,
      this.isPassword = false,
      this.maxLines = 1})
      : super(key: key);

  final String name;
  final void Function(String? newValue) onSaved;

  final String? initialValue;
  final bool isPassword;
  final int maxLines;

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
        obscureText: widget.isPassword,
        maxLines: widget.maxLines,
        enableSuggestions: !widget.isPassword,
        autocorrect: !widget.isPassword,
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
