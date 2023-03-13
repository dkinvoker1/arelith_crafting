// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:arelith_crafting/enums/category.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/item/item.dart';
import '../../repositories/items_repository.dart';
import '../../repositories/log_in_repository.dart';

part 'item_list_event.dart';
part 'item_list_state.dart';
part 'item_list_bloc.freezed.dart';

class ItemListBloc extends Bloc<ItemListEvent, ItemListState> {
  ItemListBloc() : super(_ItemListState()) {
    on<_Initialse>((event, emit) async {
      var itemsStream = ItemsRepository().getItemsStream();

      var initialCategoryFilter = <ItemCategory, bool>{};
      for (var category in ItemCategory.values) {
        initialCategoryFilter.addAll({category: true});
      }

      var isLoggedIn = await LogInRepository().isLoggedIn();

      var newState = state.copyWith(
          itemsStream: itemsStream,
          categoryFilter: initialCategoryFilter,
          isLoggedIn: isLoggedIn);
      emit.call(newState);
    });

    on<_UpdateNameFilter>((event, emit) async {
      var newState = state.copyWith(nameFilter: event.nameFilter);
      emit.call(newState);
    });

    on<_UpdateCategoryFilter>((event, emit) async {
      var newCategoryFilter = <ItemCategory, bool>{};
      for (var category in state.categoryFilter.entries) {
        newCategoryFilter.addAll({category.key: category.value});
      }

      newCategoryFilter.update(event.itemCategory, (value) => event.value);

      var newState = state.copyWith(categoryFilter: newCategoryFilter);
      emit.call(newState);
    });

    on<_Delete>((event, emit) async {
      await ItemsRepository().deleteItem(event.itemId);
    });
  }
}
