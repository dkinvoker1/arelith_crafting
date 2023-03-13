part of 'item_list_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ItemListState with _$ItemListState {
  const ItemListState._();

  const factory ItemListState({
    @Default(null) Stream<QuerySnapshot<Item>>? itemsStream,
    @Default('') String nameFilter,
    @Default({}) Map<ItemCategory, bool> categoryFilter,
    @Default(false) bool isLoggedIn 
  }) = _ItemListState;
}
