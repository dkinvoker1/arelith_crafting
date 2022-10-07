import 'package:flutter/material.dart';

class RoundedElevatedButton extends StatelessWidget {
  const RoundedElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.color,
      this.padding = 8})
      : super(key: key);

  final void Function() onPressed;
  final Widget child;
  final Color? color;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: EdgeInsets.all(padding),
          primary: color ?? Colors.blue),
      child: child,
    );
  }
}
