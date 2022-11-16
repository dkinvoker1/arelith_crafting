// ignore_for_file: prefer_final_fields, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RecipeLinesPainter2 extends CustomPainter {
  Offset boxOffset;
  Map<Offset, List<Offset>> offsetMap;

  RecipeLinesPainter2({required this.boxOffset, required this.offsetMap});

  @override
  void paint(Canvas canvas, Size size) {
    if (offsetMap.isEmpty) {
      return;
    }

    canvas.translate(-boxOffset.dx, -boxOffset.dy);

    for (var enrty in offsetMap.entries) {
      paintOneMapEntry(canvas, enrty);
    }
  }

  void paintOneMapEntry(
      Canvas canvas, MapEntry<Offset, List<Offset>> mapEntry) {
    //Brush properties
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    var parentOffset = mapEntry.key;

    var childOffsetYSum = mapEntry.value.fold<double>(
        0, (previousValue, element) => previousValue + element.dy);
    var meanY = childOffsetYSum / mapEntry.value.length;

    var halfY = (parentOffset.dy + meanY) / 2;

    //parent to mid
    canvas.drawLine(parentOffset, Offset(parentOffset.dx, halfY), paint);

    //child to mid
    for (var childOffset in mapEntry.value) {
      canvas.drawLine(childOffset, Offset(childOffset.dx, halfY), paint);
    }

    //mid
    var firstChildOffset = mapEntry.value.first;
    var lastChildOffset = mapEntry.value.last;

    canvas.drawLine(Offset(firstChildOffset.dx, halfY),
        Offset(lastChildOffset.dx, halfY), paint);
  }

  @override
  bool shouldRepaint(RecipeLinesPainter2 oldDelegate) {
    return true;
  }
}
