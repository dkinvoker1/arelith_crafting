// ignore_for_file: prefer_final_fields, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RecipeLinesPainter extends CustomPainter {
  Offset parentOffset;
  Offset childOffset;
  Offset boxOffset;

  RecipeLinesPainter(
      {required this.parentOffset,
      required this.childOffset,
      required this.boxOffset});

  @override
  void paint(Canvas canvas, Size size) {
    //Brush properties
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    canvas.translate(-boxOffset.dx, -boxOffset.dy);

    var halfY = (parentOffset.dy + childOffset.dy) / 2;

    canvas.drawLine(parentOffset, Offset(parentOffset.dx, halfY), paint);

    canvas.drawLine(
        Offset(parentOffset.dx, halfY), Offset(childOffset.dx, halfY), paint);

    canvas.drawLine(childOffset, Offset(childOffset.dx, halfY), paint);
  }

  @override
  bool shouldRepaint(RecipeLinesPainter oldDelegate) {
    return true;
  }
}
