// ignore_for_file: prefer_const_constructors

import 'package:arelith_crafting/models/item.dart';
import 'package:arelith_crafting/services/databaseService.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _itemsStream = DatabaseService().getItemsStream();
    return Scaffold(
      appBar: AppBar(title: Text("Crafting"), actions: [
        TextButton(
          onPressed: () async {
            await DatabaseService().addImage();
          },
          child: Text('add'),
        ),
      ]),
      body: StreamBuilder(
        stream: _itemsStream,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Item>> snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? Text(snapshot.connectionState.name)
              : ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Text(
                          snapshot.data!.docs[index].data().toString()),
                    );
                  },
                );
        },
      ),
    );
  }
}
