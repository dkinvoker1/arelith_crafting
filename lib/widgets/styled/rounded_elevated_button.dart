import 'package:flutter/material.dart';

class RoundedElevatedButton extends StatelessWidget {
  const RoundedElevatedButton(
      {Key? key, required this.onPressed, required this.child, this.color})
      : super(key: key);

  final void Function() onPressed;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.all(24),
          primary: color ?? Colors.blue),
      child: child,
    );
  }
}
