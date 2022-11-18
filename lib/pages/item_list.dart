// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'dart:math' as math;
import 'package:arelith_crafting/widgets/styled_elevated_button/circle_elevated_button.dart';
import 'package:arelith_crafting/widgets/styled_elevated_button/rounded_elevated_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../bloc/item_list/item_list_bloc.dart';
import '../helpers/item_list_helper.dart';
import '../models/item/item.dart';
import '../routes/router.gr.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  var stackKey = GlobalKey();
  var menuKey = GlobalKey();
  Offset menuOffset = Offset(100, 100);
  Item? clickedItem;

  String searchText = '';
  var itemsHelper = ItemListHelper(items: [], nameFilter: '');

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
    return BlocProvider(
      create: (BuildContext context) =>
          ItemListBloc()..add(ItemListEvent.initialse()),
      child:
          BlocBuilder<ItemListBloc, ItemListState>(builder: (context, state) {
        return Stack(
          key: stackKey,
          children: [
            buildList(context, state),
            ..._buildMenuItems(),
          ],
        );
      }),
    );
  }
//===============================================================================================
//                                       Build List
//===============================================================================================

  Column buildList(BuildContext context, ItemListState state) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      searchText = text;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            RoundedElevatedButton(
                onPressed: () {
                  context.router.push(AddEditItemRoute());
                },
                child: Row(
                  children: [Icon(Icons.add), Text('Add item')],
                )),
          ],
        ),
        StreamBuilder(
          stream: state.itemsStream,
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Item>> snapshot) {
            if (snapshot.data == null) {
              return Text('snapshot.data == null');
            }

            var itemsList = snapshot.data!.docs.map((e) => e.data()).toList();

            itemsHelper =
                itemsHelper.copyWith(items: itemsList, nameFilter: searchText);

            var widgetsList =
                itemsHelper.getAlphabeticalCategoriesWidgets(onItemPressed);

            return Flexible(
              child: ListView(
                padding: EdgeInsets.all(8),
                children: widgetsList,
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> onItemPressed(Offset off, Item item) async {
    var changed = clickedItem != item && menuOffset != off;

    if (changed) {
      if (stackKey.currentContext != null) {
        var stackRenderBox =
            stackKey.currentContext!.findRenderObject() as RenderBox;

        var stackYOffset = stackRenderBox.localToGlobal(Offset.zero).dy;

        if (menuKey.currentContext != null) {
          var menuRenderBox =
              menuKey.currentContext!.findRenderObject() as RenderBox;

          var menuHeight = menuRenderBox.size.height;
          var menuWidth = menuRenderBox.size.width;

          setState(() {
            menuOffset = Offset(
                off.dx - menuHeight / 2, off.dy - stackYOffset - menuWidth / 2);

            clickedItem = item;
          });
        }
      }

      _animationController.status == AnimationStatus.dismissed
          ? (_animationController).forward()
          : (_animationController).forward(from: 0);
    } else {
      _animationController.status == AnimationStatus.dismissed
          ? (_animationController).forward()
          : (_animationController).reverse();
    }
  }

//===============================================================================================
//                                       Build MenuItems
//===============================================================================================

  List<Widget> _buildMenuItems() {
    List<Widget> actions = [
      CircleElevatedButton(
          onPressed: () {
            if (clickedItem != null) {
              context.router.push(AddEditItemRoute(
                  editedItemDocumentId: clickedItem!.documentId));
            }
          },
          child: Icon(Icons.edit)),
      CircleElevatedButton(
        onPressed: () {
          if (clickedItem != null) {
            showDeleteDialog(context);
          }
        },
        color: Colors.red,
        child: Icon(Icons.clear),
      ),
      CircleElevatedButton(
          onPressed: () {
            if (clickedItem != null) {
              context.router.push(
                  RecipeRoute(rootItemDocumentId: clickedItem!.documentId));
            }
          },
          child: Icon(Icons.home)),
    ];

    int itemsCount = actions.length;
    double completeAngle = 2 * math.pi;
    double initialAngle = 0 * math.pi;
    double radius = 100;

    List<Widget> items = [];
    actions.asMap().forEach((index, item) {
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

  Future<dynamic> showDeleteDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) => BlocProvider(
              create: (BuildContext context) => ItemListBloc(),
              child: BlocBuilder<ItemListBloc, ItemListState>(
                builder: (context, state) {
                  return AlertDialog(
                    title: Text('Delete item'),
                    content: Text(
                        'Are you sure tou want to delete item "${clickedItem!.name}"'),
                    actionsAlignment: MainAxisAlignment.spaceEvenly,
                    actions: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.clear, color: Colors.red),
                      ),
                      IconButton(
                        onPressed: () {
                          (_animationController).reverse();

                          context.read<ItemListBloc>().add(
                              ItemListEvent.delete(clickedItem!.documentId));

                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.done, color: Colors.green),
                      ),
                    ],
                  );
                },
              ),
            ));
  }
}
