// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

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
      var itemsStream = DatabaseService().getItems();

      var newState = state.copyWith(itemsStream: itemsStream);
      emit.call(newState);
    });
  }
}
