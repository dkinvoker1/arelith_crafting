// ignore_for_file: depend_on_referenced_packages

import 'package:arelith_crafting/repositories/items_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../hive_models/boxes.dart';
import '../../hive_models/inventory_item/inventory_item.dart';
import '../../models/component/component_item.dart';
import '../../models/item/item.dart';

part 'equipment_event.dart';
part 'equipment_state.dart';
part 'equipment_bloc.freezed.dart';

class EquipmentBloc extends Bloc<EquipmentEvent, EquipmentState> {
  EquipmentBloc() : super(_EquipmentState()) {
    on<_Load>((event, emit) async {
      var itemsQuerySnapshot = await ItemsRepository().getItemsFuture();
      var itemsList = itemsQuerySnapshot.docs.map((e) => e.data()).toList();

      var inventoryItems = Boxes.getInventoryItems().values.toList();

      var newResultList = await getResultsList(itemsList, inventoryItems);
      var newComponentList = await getComponentsList(itemsList, newResultList);

      var newState = state.copyWith(
          resultsList: newResultList, componentsList: newComponentList);
      emit.call(newState);
    });
  }

  Future<List<ComponentItem>> getResultsList(
      List<Item> itemsList, List<InventoryItem> inventoryItems) async {
    List<ComponentItem> newResultList = [];

    for (var inventoryItem in inventoryItems) {
      var item = itemsList
          .where((element) => element.documentId == inventoryItem.documentId)
          .firstOrNull;
      if (item == null) {
        continue;
      }

      var result = ComponentItem(item: item, quantity: inventoryItem.quantity);
      newResultList.add(result);
    }

    return newResultList;
  }

  Future<List<ComponentItem>> getComponentsList(
      List<Item> itemsList, List<ComponentItem> resultsList) async {
    List<ComponentItem> componentList = [];

    for (var resultComponentItem in resultsList) {
      var resultComponentsList =
          await getItemComponentsList(itemsList, resultComponentItem);
      componentList.addAll(resultComponentsList);
    }

    componentList = await getFoldedComponentsList(componentList);

    return componentList;
  }

  Future<List<ComponentItem>> getItemComponentsList(
      List<Item> itemsList, ComponentItem finalComponentItem) async {
    List<ComponentItem> finalComponentsList = [];

    if (finalComponentItem.item.components.isEmpty) {
      finalComponentsList.add(finalComponentItem);
      return finalComponentsList;
    }

    for (var component in finalComponentItem.item.components) {
      var item = itemsList
          .where((element) => element.documentId == component.documentId)
          .firstOrNull;
      if (item == null) {
        continue;
      }

      var componentItem = ComponentItem(
          item: item,
          quantity: component.quantity * finalComponentItem.quantity);

      var componentsList =
          await getItemComponentsList(itemsList, componentItem);

      finalComponentsList.addAll(componentsList);
    }

    return finalComponentsList;
  }

  Future<List<ComponentItem>> getFoldedComponentsList(
      List<ComponentItem> componentsList) async {
    var foldedComponentsList = componentsList
        .groupFoldBy<String, ComponentItem>(
            (element) => element.item.documentId, (previous, element) {
          var b = previous == null ? 0 : previous.quantity;
          return element.copyWith(quantity: element.quantity + b);
        })
        .values
        .toList();

    return foldedComponentsList;
  }
}
