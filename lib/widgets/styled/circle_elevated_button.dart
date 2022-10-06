import 'package:flutter/material.dart';

class CircleElevatedButton extends StatelessWidget {
  const CircleElevatedButton(
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
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24),
          primary: color ?? Colors.blue),
      child: child,
    );
  }
}
