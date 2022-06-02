// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'router.gr.dart';

class MenuWrapper extends StatelessWidget {
  const MenuWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crafting"), actions: [
        TextButton(
          onPressed: () async {
            context.router.push(ItemListRoute());
          },
          child: Text('Items'),
        ),        
        // TextButton(
        //   onPressed: () async {
        //     context.router.push(RecipeRoute());
        //   },
        //   child: Text('Recipe'),
        // ),
      ]),
      body: const AutoRouter(),
    );
  }
}
