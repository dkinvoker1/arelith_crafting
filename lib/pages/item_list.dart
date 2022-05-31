// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../bloc/item_list/item_list_bloc.dart';
import '../models/item.dart';
import '../routes/router.gr.dart';
import '../widgets/item_card.dart';

class ItemListPage extends StatelessWidget {
  const ItemListPage({Key? key}) : super(key: key);

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
                  child: TextField(
                    onChanged: (text) {
                      context
                          .read<ItemListBloc>()
                          .add(ItemListEvent.search(text));
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search',
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      context.router.push(AddItemRoute());
                    },
                    child: Row(
                      children: [Icon(Icons.add), Text('Add item')],
                    ))
              ],
            ),
            Flexible(
              child: StreamBuilder(
                stream: state.itemsStream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot<Item>> snapshot) {
                  if (snapshot.data == null) {
                    return Text('snapshot.data == null');
                  }

                  return snapshot.connectionState == ConnectionState.waiting
                      ? Text(snapshot.connectionState.name)
                      : ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ItemCard(
                                item: snapshot.data!.docs[index].data());
                          },
                        );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
