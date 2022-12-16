// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, depend_on_referenced_packages, prefer_const_constructors_in_immutables, implementation_imports

import 'package:arelith_crafting/widgets/item/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../bloc/circular_menu/circular_menu_bloc.dart';
import '../../models/item/item.dart';
import '../styled_elevated_button/circle_elevated_button.dart';

class CircularMenuButton extends StatefulWidget {
  CircularMenuButton(
      {Key? key, required this.onPressed, required this.icon, this.color})
      : super(key: key);

  final void Function(Item item) onPressed;
  final IconData icon;
  final Color? color;

  @override
  State<CircularMenuButton> createState() => _CircularMenuButtonState();
}

class _CircularMenuButtonState extends State<CircularMenuButton> {
  @override
  Widget build(BuildContext context) {
    return CircleElevatedButton(
        onPressed: () {
          var bloc = context.read<CircularMenuBloc>();
          var clickedItem = bloc.state.clickedItem;
          if (clickedItem != null) {
            widget.onPressed(clickedItem);
            bloc.add(CircularMenuEvent.clearItem());
          }
        },
        color: widget.color,
        child: Icon(widget.icon));
  }
}
