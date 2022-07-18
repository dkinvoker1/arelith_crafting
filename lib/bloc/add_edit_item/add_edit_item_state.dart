part of 'add_edit_item_bloc.dart';

@freezed
class AddEditItemState with _$AddEditItemState {
  const factory AddEditItemState({
    @Default(false) bool isUploaded,
    @Default(false) bool loadPrevious,
    @Default(null) Exception? exception,
    @Default(Item(imageUrl: "", name: "", description: "")) Item item,
    @Default('') String fileName,
    @Default(null) Uint8List? fileBytes,
    
  }) = _AddItemState;
}
