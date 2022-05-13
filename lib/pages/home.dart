// ignore_for_file: prefer_const_constructors

import 'package:arelith_crafting/services/databaseService.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data"),
          TextButton(
              onPressed: () async {
                await DatabaseService().addImage();
              },
              child: Text('add'))
        ],
      ),
    );
  }
}
