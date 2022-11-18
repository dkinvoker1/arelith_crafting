// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/item/item.dart';
import '../widgets/item/card.dart';

part 'item_list_helper.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ItemListHelper with _$ItemListHelper {
  const ItemListHelper._();
  factory ItemListHelper(
      {required List<Item> items,
      required String nameFilter}) = _ItemListHelper;

  List<Widget> getAlphabeticalCategoriesWidgets(
      void Function(Offset off, Item item) onItemPressed) {
    List<Widget> widgets = [];
    List<String> categories = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'R',
      'S',
      'T',
      'U',
      'W',
      'X',
      'Y',
      'Z'
    ];

    var filteredItems= getFilteredItems();

    Iterable<Map<String, List<Item>>> categoriesWithItemsMap =
        categories.map((category) => {
              category: filteredItems
                  .where((element) =>
                      element.name.characters.first.toLowerCase() ==
                      category.characters.first.toLowerCase())
                  .toList()
            });

    categoriesWithItemsMap = categoriesWithItemsMap
        .where((element) => element.values.first.isNotEmpty);

    for (var map in categoriesWithItemsMap) {
      var categoryItems = map.values.first;
      var itemsInRow = 5;
      var rowCount = (categoryItems.length / itemsInRow).ceil();

      var column = Column(
        children: [],
      );

      for (var r = 0; r < rowCount; r++) {
        var row = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        );

        for (var c = 0; c < itemsInRow; c++) {
          var index = r * itemsInRow + c;
          if (index < categoryItems.length) {
            row.children.add(ItemCard(
              item: categoryItems[index],
              onPressed: onItemPressed,
            ));
          }
        }

        column.children.add(row);
      }

      widgets.add(Column(
        children: [
          Divider(color: Colors.grey),
          Center(
            child: Text(
              map.keys.first,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Divider(color: Colors.grey),
          column
        ],
      ));
    }

    return widgets;
  }

  List<Item> getFilteredItems() {
    return items
        .where((element) =>
            element.name.toLowerCase().contains(nameFilter.toLowerCase()))
        .toList();
  }
}
