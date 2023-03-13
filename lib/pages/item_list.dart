// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_build_context_synchronously

import 'package:arelith_crafting/widgets/circular_menu/circular_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

import '../bloc/circular_menu/circular_menu_bloc.dart';
import '../bloc/item_list/item_list_bloc.dart';
import '../helpers/item_list_helper.dart';
import '../hive_models/boxes.dart';
import '../hive_models/inventory_item/inventory_item.dart';
import '../models/item/item.dart';
import '../routes/router.gr.dart';
import '../widgets/circular_menu/circular_menu_button.dart';
import '../widgets/styled_elevated_button/rounded_elevated_button_switch.dart';
import 'dart:math' as math;

class ItemListPage extends StatefulWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) =>
              ItemListBloc()..add(ItemListEvent.initialse()),
        ),
        BlocProvider(
          create: (context) => CircularMenuBloc(),
        ),
      ],
      child:
          BlocBuilder<ItemListBloc, ItemListState>(builder: (context, state) {
        List<Widget> actions = [];

        if (state.isLoggedIn) {
          actions.add(CircularMenuButton(
            onPressed: (item) {
              context.router
                  .push(EditItemRoute(editedItemDocumentId: item.documentId));
            },
            icon: Icon(Icons.edit),
          ));

          actions.add(CircularMenuButton(
            onPressed: (item) {
              showDeleteDialog(context, item);
            },
            color: Colors.red,
            icon: Icon(Icons.clear),
          ));
        } else {
          actions.add(CircularMenuButton(
            onPressed: (item) {},
            color: Colors.grey,
            icon: Icon(Icons.edit),
          ));

          actions.add(CircularMenuButton(
            onPressed: (item) {},
            color: Colors.grey,
            icon: Icon(Icons.clear),
          ));
        }

        actions.add(CircularMenuButton(
          onPressed: (item) {
            var box = Boxes.getInventoryItems();

            var inventoryItemList = box.values
                .where((element) => element.documentId == item.documentId);
                
            if (inventoryItemList.isNotEmpty) {
              inventoryItemList.first.quantity += 1;
              inventoryItemList.first.save();
            } else {
              var inventoryItem = InventoryItem()
                ..documentId = item.documentId
                ..quantity = 1;
              box.add(inventoryItem);
            }
          },
          icon: Icon(Icons.add),
        ));

        actions.add(CircularMenuButton(
            onPressed: (item) {
              context.router
                  .push(RecipeRoute(rootItemDocumentId: item.documentId));
            },
            icon: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Transform.rotate(
                angle: 90 * math.pi / 180,
                child: Icon(Icons.account_tree_outlined),
              ),
            )));

        return CircularMenu(actions: actions, child: buildList(context, state));
      }),
    );
  }

//===============================================================================================
//                                       Build List
//===============================================================================================

  Column buildList(BuildContext context, ItemListState state) {
    var categoryWidgets = Row(
      children: [],
    );

    for (var element in state.categoryFilter.entries) {
      categoryWidgets.children.add(Expanded(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: RoundedElevatedButtonSwitch(
            onPressed: (bool value) {
              context
                  .read<ItemListBloc>()
                  .add(ItemListEvent.updateCategoryFilter(element.key, value));
            },
            color: element.key.color,
            text: element.key.displayName,
            initialValue: element.value,
          ),
        ),
      ));
    }

    return Column(
      children: [
        Container(
          color: Colors.blueGrey[900],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (text) {
                    context
                        .read<ItemListBloc>()
                        .add(ItemListEvent.updateNameFilter(text));
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search',
                  ),
                ),
              ),
              categoryWidgets,
            ],
          ),
        ),
        StreamBuilder(
          stream: state.itemsStream,
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Item>> snapshot) {
            if (snapshot.data == null) {
              return Text('snapshot.data == null');
            }

            var itemsList = snapshot.data!.docs.map((e) => e.data()).toList();

            var widgetsList = ItemListHelper().getAlphabeticalCategoriesWidgets(
                itemsList, state.nameFilter, state.categoryFilter);

            return Flexible(
              child: NotificationListener(
                child: ListView(
                  padding: EdgeInsets.all(8),
                  children: widgetsList,
                ),
                onNotification: (t) {
                  if (t is ScrollStartNotification) {
                    context
                        .read<CircularMenuBloc>()
                        .add(CircularMenuEvent.clearItem());
                  }
                  return true;
                },
              ),
            );
          },
        ),
      ],
    );
  }

//===============================================================================================
//                                       Show Delete Dialog
//===============================================================================================
  Future<dynamic> showDeleteDialog(BuildContext context, Item item) {
    return showDialog(
        context: context,
        builder: (BuildContext context) => BlocProvider(
              create: (BuildContext context) => ItemListBloc(),
              child: BlocBuilder<ItemListBloc, ItemListState>(
                builder: (context, state) {
                  return AlertDialog(
                    title: Text('Delete item'),
                    content: Text(
                        'Are you sure tou want to delete item "${item.name}"'),
                    actionsAlignment: MainAxisAlignment.spaceEvenly,
                    actions: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.clear, color: Colors.red),
                      ),
                      IconButton(
                        onPressed: () {
                          context
                              .read<ItemListBloc>()
                              .add(ItemListEvent.delete(item.documentId));

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
