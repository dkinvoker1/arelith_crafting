// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, depend_on_referenced_packages, prefer_const_constructors_in_immutables, implementation_imports

import 'package:arelith_crafting/widgets/item/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../bloc/circular_menu/circular_menu_bloc.dart';
import '../../models/item/item.dart';

class CircularMenuItemCard extends StatefulWidget {
  CircularMenuItemCard({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  State<CircularMenuItemCard> createState() => _CircularMenuItemCardState();
}

class _CircularMenuItemCardState extends State<CircularMenuItemCard> {
  @override
  Widget build(BuildContext context) {
    return ItemCard(
        item: widget.item,
        onPressed: (offset, item) async {
          context
              .read<CircularMenuBloc>()
              .add(CircularMenuEvent.setItem(offset, item));
        });
  }
}
