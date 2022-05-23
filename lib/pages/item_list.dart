// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../bloc/itemlist/item_list_bloc.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ItemListBloc()..add(ItemListEvent.started()),
      child:
          BlocBuilder<ItemListBloc, ItemListState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Container(),
            actions: [
              TextButton(
                  onPressed: () {
                    
                  },
                  child: Row(
                    children:  [Icon(Icons.add), Text('Add Item')],
                  ))
            ],
          ),
          body: StreamBuilder(
            stream: state.stream,
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot<Item>> snapshot) {
              if (snapshot.data == null) {
                return Text('snapshot.data == null');
              }

              return snapshot.connectionState == ConnectionState.waiting
                  ? Text(snapshot.connectionState.name)
                  : ListView.builder(
                      itemCount: snapshot.data?.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemCard(
                            item: snapshot.data!.docs[index].data());
                      },
                    );
            },
          ),
        );
      }),
    );
  }
}
