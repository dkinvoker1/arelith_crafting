part of 'add_edit_item_bloc.dart';

@freezed
class AddEditItemState with _$AddItemState {
  const factory AddEditItemState({
    @Default(false) bool isUploaded,
    @Default(null) Exception? exception,
    @Default(Item(imageUrl: "", name: "", description: "")) Item item,
    @Default('') String fileName,
    @Default(null) Uint8List? fileBytes,
    
  }) = _AddItemState;
}
