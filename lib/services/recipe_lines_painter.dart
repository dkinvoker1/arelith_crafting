// ignore_for_file: prefer_final_fields, prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:flutter/material.dart';

class RecipeLinesPainter extends CustomPainter {
  List<Offset> _points;

  RecipeLinesPainter(this._points);

  @override
  void paint(Canvas canvas, Size size) {
    if (_points.length > 1) {
      //Brush properties
      var paint = Paint()
        ..color = Colors.white
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round;

      //Draw line
      canvas.clipRect(Offset.zero & size);

      for (var point in _points) {
        var halfY = (_points.first.dy + point.dy) / 2;

        canvas.drawLine(_points.first, Offset(_points.first.dx, halfY), paint);
        
        canvas.drawLine(Offset(_points.first.dx, halfY), Offset(point.dx, halfY), paint);

        canvas.drawLine(point, Offset(point.dx, halfY), paint);
      }
    }
  }

  @override
  bool shouldRepaint(RecipeLinesPainter oldDelegate) {
    return true;
  }
}
