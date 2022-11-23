// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repositories/items_repository.dart';

part 'item_card_event.dart';
part 'item_card_state.dart';
part 'item_card_bloc.freezed.dart';

class ItemCardBloc extends Bloc<ItemCardEvent, ItemCardState> {
  ItemCardBloc() : super(_Initial()) {
    on<_Delete>((event, emit) async {
      await ItemsRepository().deleteItem(event.itemId);
    });
  }
}
