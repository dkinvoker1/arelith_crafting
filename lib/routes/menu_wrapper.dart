// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:arelith_crafting/repositories/log_in_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'router.gr.dart';

class MenuWrapper extends StatelessWidget {
  const MenuWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userStream = LogInRepository().getLogInUserStream();

    return StreamBuilder<User?>(
        stream: userStream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
                title: TextButton(
                  onPressed: () {
                    context.router.push(ItemListRoute());
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Arelith Crafting'),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        context.router.push(EquipmentRoute());
                      },
                      icon: Icon(Icons.app_registration_sharp)),
                  snapshot.data == null
                      ? IconButton(
                          onPressed: () {
                            context.router.push(LogInRoute(
                              onLoginCallback: (_) {
                                context.router.push(ItemListRoute());
                              },
                            ));
                          },
                          icon: Icon(Icons.person))
                      : IconButton(
                          onPressed: () {
                            context.router.push(AddItemRoute());
                          },
                          icon: Icon(Icons.add)),
                  snapshot.data == null
                      ? SizedBox()
                      : IconButton(
                          onPressed: () async {
                            await LogInRepository().logOut();
                            context.router.push(ItemListRoute());
                          },
                          icon: Icon(Icons.logout))
                ]),
            body: const AutoRouter(),
          );
        });
  }
}
