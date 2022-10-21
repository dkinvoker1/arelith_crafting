// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, depend_on_referenced_packages

import 'package:arelith_crafting/widgets/item/image_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/item_card/item_card_bloc.dart';
import '../../models/item.dart';
import '../../routes/router.gr.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          children: [
            Text(item.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemImageButton(item: item),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.router.push(AddEditItemRoute(
                            editedItemDocumentId: item.documentId));
                      },
                      icon: Icon(Icons.edit),
                      iconSize: 16,
                    ),
                    IconButton(
                      onPressed: () => showDeleteDialog(context),
                      icon: Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                      iconSize: 16,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showDeleteDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) => BlocProvider(
              create: (context) => ItemCardBloc(),
              child: BlocBuilder<ItemCardBloc, ItemCardState>(
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
                              .read<ItemCardBloc>()
                              .add(ItemCardEvent.delete(item.documentId));

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
