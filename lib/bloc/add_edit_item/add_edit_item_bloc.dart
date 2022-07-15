// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'dart:typed_data';

import 'package:arelith_crafting/services/database_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:file_picker/file_picker.dart';

import '../../models/item.dart';

part 'add_edit_item_event.dart';
part 'add_edit_item_state.dart';
part 'add_item_bloc.freezed.dart';

class AddEditItemBloc extends Bloc<AddEditItemEvent, AddEditItemState> {
  AddEditItemBloc() : super(_AddItemState()) {
    on<_Load>((event, emit) async {
      var itemSnapshot = await DatabaseService().getItemById(event.itemId);
      if (itemSnapshot.data() != null) {
        var imageBytes = await DatabaseService()
            .getImageBytesByUrl(itemSnapshot.data()!.imageUrl);

        var imageName = itemSnapshot.data()!.imageUrl;
        imageName = imageName.split('/').last.split('?').first;

        var newState = state.copyWith(
            item: itemSnapshot.data()!,
            fileName: imageName,
            fileBytes: imageBytes);

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

    on<_SetImage>((event, emit) {
      var newState = state.copyWith(
          fileName: event.file.name, fileBytes: event.file.bytes);
      emit.call(newState);
    });

    on<_Save>((event, emit) async {
      if (state.fileBytes != null) {
        var error = await DatabaseService().updateItem(
            item: state.item,
            fileName: state.fileName,
            fileBytes: state.fileBytes!);
        emit.call(state.copyWith(
            exception: error, isUploaded: error == null ? true : false));
      }
    });
  }
}
