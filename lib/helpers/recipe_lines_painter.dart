// ignore_for_file: prefer_final_fields, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RecipeLinesPainter extends CustomPainter {
  GlobalKey boxKey;
  Map<GlobalKey, List<GlobalKey>> keyMap;

  RecipeLinesPainter({required this.boxKey, required this.keyMap});

  @override
  void paint(Canvas canvas, Size size) {
    if (boxKey.currentContext == null || keyMap.isEmpty) {
      return;
    }

    var boxBox = boxKey.currentContext!.findRenderObject() as RenderBox;
    var bx = boxBox.localToGlobal(Offset.zero).dx;
    var by = boxBox.localToGlobal(Offset.zero).dy;

    canvas.translate(-bx, -by);

    for (var entry in keyMap.entries) {
      var parentOffset = getKeyOffset(entry.key);

      List<Offset> childrenOffsetList = [];

      for (var element in entry.value) {
        var childOffset = getKeyOffset(element);
        childrenOffsetList.add(childOffset);
      }

      var mapEntry = {parentOffset: childrenOffsetList};

      paintOneMapEntry(canvas, mapEntry.entries.first);
    }
  }

  Offset getKeyOffset(GlobalKey key) {
    var itemBox = key.currentContext!.findRenderObject() as RenderBox;
    var x = itemBox.localToGlobal(Offset.zero).dx + itemBox.size.width / 2;
    var y = itemBox.localToGlobal(Offset.zero).dy + itemBox.size.height / 2;
    var offset = Offset(x, y);

    return offset;
  }

  void paintOneMapEntry(
      Canvas canvas, MapEntry<Offset, List<Offset>> mapEntry) {
    if (mapEntry.value.isEmpty) {
      return;
    }
    if (mapEntry.value.length < 2) {
      paintOneComonentRecipe(canvas, mapEntry);
    } else {
      paintManyComonentRecipe(canvas, mapEntry);
    }
  }

  void paintOneComonentRecipe(
      Canvas canvas, MapEntry<Offset, List<Offset>> mapEntry) {
    //Brush properties
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    var parentOffset = mapEntry.key;
    var childOffset = mapEntry.value.first;

    canvas.drawLine(parentOffset, childOffset, paint);
  }

  void paintManyComonentRecipe(
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
  bool shouldRepaint(RecipeLinesPainter oldDelegate) {
    return true;
  }
}
