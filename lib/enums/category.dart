import 'package:flutter/material.dart';

enum ItemCategory {
  smithing('Smithing', Colors.grey),
  carpentry('Carpentry', Colors.brown),
  tailoring('Tailoring', Colors.deepPurple),
  artCrafting('Art Crafting', Colors.teal),
  herbalism('Herbalism', Colors.green),
  alchemy('Alchemy', Colors.red);

  const ItemCategory(this.displayName, this.color);
  final String displayName;
  final Color color;
}
