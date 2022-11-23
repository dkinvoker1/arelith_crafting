// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'dart:typed_data';

import 'package:arelith_crafting/enums/category.dart';
import 'package:arelith_crafting/repositories/items_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:file_picker/file_picker.dart';

import '../../models/component/component.dart';
import '../../models/component/component_item.dart';
import '../../models/item/item.dart';

part 'add_edit_item_event.dart';
part 'add_edit_item_state.dart';
part 'add_edit_item_bloc.freezed.dart';

class AddEditItemBloc extends Bloc<AddEditItemEvent, AddEditItemState> {
  AddEditItemBloc() : super(_AddItemState()) {
    on<_InitialiseComponents>(
      (event, emit) async {
        List<ComponentItem> components = List.empty(growable: true);

        var itemsQuerySnapshot = await ItemsRepository().getItemsFuture();
        var itemsDocumentSnapshot = itemsQuerySnapshot.docs;
        var itemsList = itemsDocumentSnapshot.map((e) => e.data()).toList();

        for (var item in itemsList) {
          var component = ComponentItem(item: item, quantity: 0);
          components.add(component);
        }

        var newState = state.copyWith(componentItems: components);
        emit.call(newState);
      },
    );

    on<_Load>((event, emit) async {
      var itemSnapshot = await ItemsRepository().getItemById(event.itemId);
      if (itemSnapshot.data() != null) {
        var imageBytes = await ItemsRepository()
            .getImageBytesByUrl(itemSnapshot.data()!.imageUrl);

        var imageName = itemSnapshot.data()!.imageUrl;
        imageName = imageName.split('/').last.split('?').first;

        var item = itemSnapshot.data()!;

        var componentItems = state.componentItems;
        if (componentItems != null) {
          componentItems = state.componentItems!
              .where((element) => element.item.documentId != item.documentId)
              .toList();

          for (var component in item.components) {
            var index = componentItems.indexWhere(
                (element) => element.item.documentId == component.documentId);

            if (index >= 0) {
              componentItems.replaceRange(index, index + 1, [
                componentItems[index].copyWith(quantity: component.quantity)
              ]);
            }
          }
        }

        var newState = state.copyWith(
            item: item,
            fileName: imageName,
            fileBytes: imageBytes,
            componentItems: componentItems,
            loadPrevious: false);

        emit.call(newState);
      }
    });

    on<_Update>((event, emit) {
      var itemJson = state.item.toJson();

      if (itemJson.containsKey(event.key)) {
        itemJson.update(event.key, ((value) {
          return event.value;
        }));
      }

      var newState = state.copyWith(item: Item.fromJson(itemJson));
      emit.call(newState);
    });

    on<_UpdateCategory>((event, emit) {
      var itemHasCategory = state.item.categories.contains(event.category);
      var shouldChangeItemCategories = itemHasCategory != event.hasThisCategory;

      if (shouldChangeItemCategories) {
        var newCategories = <ItemCategory>[];
        newCategories.addAll(state.item.categories);

        if (event.hasThisCategory) {
          newCategories.add(event.category);
        } else {
          newCategories.remove(event.category);
        }

        var newState = state.copyWith(
            item: state.item.copyWith(categories: newCategories));
        emit.call(newState);
      }
    });

    on<_SetImage>((event, emit) {
      var newState = state.copyWith(
          fileName: event.file.name, fileBytes: event.file.bytes);
      emit.call(newState);
    });

    on<_SetComponents>((event, emit) {
      var newState = state.copyWith(componentItems: event.componentItems);

      emit.call(newState);
    });

    on<_Save>((event, emit) async {
      _updateItemComponents();

      if (state.fileBytes != null) {
        var error = await ItemsRepository().updateItem(
            item: state.item,
            fileName: state.fileName,
            fileBytes: state.fileBytes!);
        emit.call(state.copyWith(
            exception: error, isUploaded: error == null ? true : false));
      }
    });
  }

  void _updateItemComponents() {
    if (state.componentItems != null) {
      var selectedComponentItems =
          state.componentItems!.where((element) => element.quantity > 0);

      var selectedComponents = selectedComponentItems.map((e) =>
          Component(documentId: e.item.documentId, quantity: e.quantity));

      state.item.components.clear();
      state.item.components.addAll(selectedComponents);
    }
  }
}
