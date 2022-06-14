part of 'item_list_bloc.dart';

@freezed
class ItemListState with _$ItemListState {
  const ItemListState._();

  const factory ItemListState({
    @Default(null) Stream<QuerySnapshot<Item>>? itemsStream,
  }) = _ItemListState;
}
