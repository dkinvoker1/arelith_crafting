// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/item/item.dart';

part 'circular_menu_event.dart';
part 'circular_menu_state.dart';
part 'circular_menu_bloc.freezed.dart';

class CircularMenuBloc extends Bloc<CircularMenuEvent, CircularMenuState> {
  CircularMenuBloc() : super(const _CircularMenuState()) {
    on<_SetItem>((event, emit) {
      var newState = state.copyWith(
          clickedItem:
              state.clickedItem == event.newItem ? null : event.newItem,
          offset: event.offset);
      emit.call(newState);
    });

    on<_ClearItem>((event, emit) {
      var newState = state.copyWith(
        clickedItem: null,
      );
      emit.call(newState);
    });
  }
}
