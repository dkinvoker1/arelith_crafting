part of 'add_item_bloc.dart';

@freezed
class AddItemState with _$AddItemState {
  const factory AddItemState({
    @Default(null) Exception? exception,
    @Default(Item(imageUrl: "", name: "", description: "")) Item item,
    @Default(null) PlatformFile? file,
  }) = _AddItemState;
}
