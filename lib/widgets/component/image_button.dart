// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../models/component_item.dart';
import '../../routes/router.gr.dart';
import '../item/image.dart';

class ComponentImageButton extends StatefulWidget {
  const ComponentImageButton({
    Key? key,
    required this.component,
  }) : super(key: key);

  final ComponentItem component;
  // final void Function() onPositionChanged;

  @override
  State<ComponentImageButton> createState() => _componentImageButtonState();
}

class _componentImageButtonState extends State<ComponentImageButton> {
  // var key = GlobalKey();
  // Offset myOffset = Offset.zero;

  // var boxKey = GlobalKey();
  // Offset myBoxOffset = Offset.zero;

  // void changeMyOffset(Offset offset) {
  //   setState(() {
  //     myOffset = offset;
  //   });
  // }

  // void changeMyBoxOffset(Offset offset) {
  //   setState(() {
  //     myBoxOffset = offset;
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPersistentFrameCallback((_) {
  //     if (key.currentContext != null) {
  //       var itemBox = key.currentContext!.findRenderObject() as RenderBox;
  //       var x = itemBox.localToGlobal(Offset.zero).dx + itemBox.size.width / 2;
  //       var y = itemBox.localToGlobal(Offset.zero).dy + itemBox.size.height;

  //       changeMyOffset(Offset(x, y));

  //       var boxBox = boxKey.currentContext!.findRenderObject() as RenderBox;
  //       var bx = boxBox.localToGlobal(Offset.zero).dx;
  //       var by = boxBox.localToGlobal(Offset.zero).dy;

  //       changeMyBoxOffset(Offset(bx, by));
  //     }
  //   });
  // }

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      // key: key,
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          onPressed: () {
            context.router.push(RecipeRoute(
                rootItemDocumentId: widget.component.item.documentId));
          },
          child: Stack(
            children: [
              ItemImage(item: widget.component.item),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        widget.component.quantity.toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
