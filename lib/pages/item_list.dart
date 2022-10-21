// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:arelith_crafting/widgets/item/card.dart';
import 'package:arelith_crafting/widgets/styled_elevated_button/rounded_elevated_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../bloc/item_list/item_list_bloc.dart';
import '../helpers/item_list_helper.dart';
import '../models/item.dart';
import '../routes/router.gr.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ItemListBloc()..add(ItemListEvent.initialse()),
      child:
          BlocBuilder<ItemListBloc, ItemListState>(builder: (context, state) {
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

                var itemsWhereSnapshot = snapshot.data!.docs
                    .where((element) => element
                        .data()
                        .name
                        .toLowerCase()
                        .contains(searchText.toLowerCase()))
                    .toList();

                var itemsWhere =
                    itemsWhereSnapshot.map((e) => e.data()).toList();

                var itemsHelper = ItemListHelper(items: itemsWhere);

                var widgetsList = itemsHelper.getAlphabeticalCategoriesWidgets();

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
      }),
    );
  }
}
