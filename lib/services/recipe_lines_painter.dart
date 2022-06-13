// ignore_for_file: prefer_final_fields, prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:flutter/material.dart';

class RecipeLinesPainter extends CustomPainter {
  Offset _parentOffset;
  Offset _childOffset;

  RecipeLinesPainter(this._parentOffset, this._childOffset);

  @override
  void paint(Canvas canvas, Size size) {
    //Brush properties
    var paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    //Draw line
    // canvas.translate(0, -size.height);
    // canvas.clipRect(Offset.zero & size);

    // var halfY = (_parentOffset.dy + _childOffset.dy) / 2;

    // canvas.drawLine(_parentOffset, Offset(_childOffset.dx, halfY), paint);

    // canvas.drawLine(Offset(_parentOffset.dx, halfY), Offset(_childOffset.dx, halfY), paint);

    // canvas.drawLine(_childOffset, Offset(_childOffset.dx, halfY), paint);

    // canvas.drawLine(_parentOffset, _childOffset, paint);

    canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(0,size.height), Offset(size.width, 0), paint);
  }

  @override
  bool shouldRepaint(RecipeLinesPainter oldDelegate) {
    return true;
  }
}
