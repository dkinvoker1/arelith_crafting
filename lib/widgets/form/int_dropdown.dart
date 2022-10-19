// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ArelithIntDropdown extends StatefulWidget {
  ArelithIntDropdown(
      {Key? key,
      required this.name,
      this.initialValue,
      required this.onChanged})
      : super(key: key);

  final String name;
  final int? initialValue;
  final void Function(dynamic newValue) onChanged;

  @override
  State<ArelithIntDropdown> createState() => _ArelithIntDropdownState();
}

class _ArelithIntDropdownState extends State<ArelithIntDropdown> {
  int dropdownValue = 1;

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      dropdownValue = widget.initialValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: DropdownButtonFormField<int>(
        decoration: InputDecoration(labelText: widget.name),
        items: <int>[1, 2, 3, 4, 5, 6].map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        value: dropdownValue,
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
          widget.onChanged.call(newValue);
        },
      ),
    );
  }
}
