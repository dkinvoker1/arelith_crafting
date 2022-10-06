part of 'add_edit_item_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AddEditItemState with _$AddEditItemState {
  const AddEditItemState._();

  const factory AddEditItemState({
    @Default(false) bool isUploaded,
    @Default(true) bool loadPrevious,
    @Default(null) Exception? exception,
    @Default(Item(imageUrl: "", name: "", description: "", width: 1, height: 1))
        Item item,
    @Default('') String fileName,
    @Default(null) Uint8List? fileBytes,
    @Default(null) List<ComponentItem>? componentItems,
  }) = _AddItemState;
}
