// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/item.dart';
import '../../services/database_service.dart';

part 'item_list_event.dart';
part 'item_list_state.dart';
part 'item_list_bloc.freezed.dart';

class ItemListBloc extends Bloc<ItemListEvent, ItemListState> {
  ItemListBloc() : super(_ItemListState()) {
    on<_Initialse>((event, emit) {
      var _itemsQuery = DatabaseService().getItemsNameQuery("");

      var newState = state.copyWith(itemsQuery: _itemsQuery);
      emit.call(newState);
    });

    on<_Search>((event, emit) {
      var _itemsQuery = DatabaseService().getItemsNameQuery(event.searhPhrase);
      var newState = state.copyWith(itemsQuery: _itemsQuery);
      emit.call(newState);
    });
  }
}
