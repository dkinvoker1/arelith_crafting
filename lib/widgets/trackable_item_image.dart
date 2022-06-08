// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types, depend_on_referenced_packages

import 'dart:developer';

import 'package:arelith_crafting/bloc/recipe/recipe_bloc.dart';
import 'package:arelith_crafting/widgets/item_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/item.dart';

class TrackableItemImage extends StatefulWidget {
  const TrackableItemImage({Key? key, required this.item, required this.bloc})
      : super(key: key);
  final Item item;
  final RecipeBloc bloc;

  @override
  State<TrackableItemImage> createState() => _itemImageState();
}

class _itemImageState extends State<TrackableItemImage> {
  var key = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (key.currentContext != null) {
        var box = key.currentContext!.findRenderObject() as RenderBox;
        var x = box.localToGlobal(Offset.zero).dx + box.size.width / 2;
        var y = box.localToGlobal(Offset.zero).dy - box.size.height / 2;

        widget.bloc.add(RecipeEvent.addPoint(Offset(x, y)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ItemImage(key: key, item: widget.item);
  }
}
