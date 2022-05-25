part of 'item_list_bloc.dart';

@freezed
class ItemListState with _$ItemListState {
  const ItemListState._();

  const factory ItemListState({
    @Default(null) Query<Item>? itemsQuery,
  }) = _ItemListState;

  Stream<QuerySnapshot<Item>>? get itemsStream {
    return itemsQuery?.snapshots();
  }
}
