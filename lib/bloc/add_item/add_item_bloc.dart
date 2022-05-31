// ignore_for_file: prefer_const_constructors

import 'package:arelith_crafting/services/database_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:file_picker/file_picker.dart';

import '../../models/item.dart';

part 'add_item_event.dart';
part 'add_item_state.dart';
part 'add_item_bloc.freezed.dart';

class AddItemBloc extends Bloc<AddItemEvent, AddItemState> {
  AddItemBloc() : super(_AddItemState()) {
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
    on<_SetImage>((event, emit) {
      var newState = state.copyWith(file: event.file);
      emit.call(newState);
    });
    on<_Save>((event, emit) async {
      var error = await DatabaseService().addImage(item: state.item, file: state.file!);
      emit.call(state.copyWith(exception: error));
    });
  }
}
