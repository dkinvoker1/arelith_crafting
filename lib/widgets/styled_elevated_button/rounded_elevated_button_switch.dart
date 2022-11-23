// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedElevatedButtonSwitch extends StatefulWidget {
  RoundedElevatedButtonSwitch({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
    this.initialValue = false,
  }) : super(key: key);

  final void Function(bool active) onPressed;
  final bool initialValue;
  final String text;
  final Color? color;

  @override
  State<RoundedElevatedButtonSwitch> createState() =>
      _roundedElevatedButtonSwitchState();
}

class _roundedElevatedButtonSwitchState
    extends State<RoundedElevatedButtonSwitch> {
  bool value = false;

  @override
  void initState() {
    super.initState();

    if (value != widget.initialValue) {
      value = widget.initialValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    var color = widget.color ?? Colors.blue;

    final hsl = HSLColor.fromColor(color);
    final hslDark =
        hsl.withLightness((value ? hsl.lightness : 0.3 * hsl.lightness));

    return ElevatedButton(
      onPressed: (() {
        setState(() {
          value = !value;
        });

        widget.onPressed(value);
      }),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: EdgeInsets.all(4.0),
          primary: hslDark.toColor()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              value ? Icons.done_rounded : Icons.clear,
              color: hslDark.toColor(),
            ),
          ),
          Spacer(),
          Text(widget.text),
          Spacer(),
        ],
      ),
    );
  }
}
