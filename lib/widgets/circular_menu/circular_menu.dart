// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_build_context_synchronously, implementation_imports

import 'dart:math' as math;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/circular_menu/circular_menu_bloc.dart';
import '../../models/item/item.dart';
import '../../repositories/log_in_repository.dart';
import '../../routes/router.gr.dart';

class CircularMenu extends StatefulWidget {
  const CircularMenu({Key? key, required this.actions, required this.child})
      : super(key: key);

  final Widget child;
  final List<Widget> actions;

  @override
  State<CircularMenu> createState() => _CircularMenuState();
}

class _CircularMenuState extends State<CircularMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  var stackKey = GlobalKey();
  var menuKey = GlobalKey();

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.bounceOut,
          reverseCurve: Curves.fastOutSlowIn),
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CircularMenuBloc, CircularMenuState>(
      listener: (context, state) async {
        await onStatusChange(state.offset, state.clickedItem);
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<CircularMenuBloc>().add(CircularMenuEvent.clearItem());
          },
          child: Stack(
            key: stackKey,
            children: [
              widget.child,
              ..._buildMenuItems(state.offset),
            ],
          ),
        );
      },
    );
  }

//===============================================================================================
//                                       onItemPressed
//===============================================================================================
  Future<void> onStatusChange(Offset offset, Item? newItem) async {
    if (newItem == null) {
      if (_animationController.status == AnimationStatus.completed ||
          _animationController.status == AnimationStatus.forward) {
        (_animationController).reverse();
      }
    } else {
      onNewItemPressed(newItem);
    }
  }

  Future<void> onNewItemPressed(Item newItem) async {
    var loggedInUser = await LogInRepository().isLoggedIn();

    if (!loggedInUser) {
      context.router.push(RecipeRoute(rootItemDocumentId: newItem.documentId));
      return;
    }

    _animationController.status == AnimationStatus.dismissed
        ? (_animationController).forward()
        : (_animationController).forward(from: 0);
  }

//===============================================================================================
//                                       Build MenuItems
//===============================================================================================

  List<Widget> _buildMenuItems(Offset offset) {
    int itemsCount = widget.actions.length;
    double completeAngle = 2 * math.pi;
    double initialAngle = 0 * math.pi;
    double radius = 100;

    var menuOffset = getMenuOffset(offset);

    List<Widget> items = [];
    widget.actions.asMap().forEach((index, item) {
      items.add(
        Positioned(
          key: index > 0 ? null : menuKey,
          top: menuOffset.dy,
          left: menuOffset.dx,
          child: Transform.translate(
            offset: Offset.fromDirection(
                completeAngle == (2 * math.pi)
                    ? (initialAngle + (completeAngle / (itemsCount)) * index)
                    : (initialAngle +
                        (completeAngle / (itemsCount - 1)) * index),
                _animation.value * radius),
            child: Transform.scale(
              scale: _animation.value,
              child: Transform.rotate(
                angle: _animation.value * (math.pi * 2),
                child: item,
              ),
            ),
          ),
        ),
      );
    });

    return items;
  }

  Offset getMenuOffset(Offset offset) {
    if (stackKey.currentContext == null || menuKey.currentContext == null) {
      return Offset(0, 0);
    }

    var stackRenderBox =
        stackKey.currentContext!.findRenderObject() as RenderBox;

    var stackYOffset = stackRenderBox.localToGlobal(Offset.zero).dy;

    var menuRenderBox = menuKey.currentContext!.findRenderObject() as RenderBox;

    var menuHeight = menuRenderBox.size.height;
    var menuWidth = menuRenderBox.size.width;

    return Offset(
        offset.dx - menuHeight / 2, offset.dy - stackYOffset - menuWidth / 2);
  }
}
