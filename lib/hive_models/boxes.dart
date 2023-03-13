import 'package:hive_flutter/hive_flutter.dart';

import 'inventory_item/inventory_item.dart';

class Boxes {
  static Future<void> setUpHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(InventoryItemAdapter());

    await Hive.openBox<InventoryItem>('inventory_item');
  }

  static Box<InventoryItem> getInventoryItems() =>
      Hive.box<InventoryItem>('inventory_item');

  static Future<void> closeInventoryItemsBox() async =>
      await Hive.box<InventoryItem>('inventory_item').close();
}
