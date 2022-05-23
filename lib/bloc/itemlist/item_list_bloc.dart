// ignore_for_file: prefer_const_constructors

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
    on<_Started>((event, emit) {
      var _itemsStream = DatabaseService().getItemsStream();
      var c = state.copyWith(aaa: "Your items:", stream: _itemsStream);
      emit.call(c);
    });
  }
}
