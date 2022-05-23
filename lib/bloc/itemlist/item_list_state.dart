part of 'item_list_bloc.dart';

@freezed
class ItemListState with _$ItemListState {
  const factory ItemListState({
    @Default("Wait god damn it!") String aaa,
    @Default(null) Stream<QuerySnapshot<Item>>? stream,
  }) = _ItemListState;
}
