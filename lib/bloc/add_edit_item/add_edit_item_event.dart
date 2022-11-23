part of 'add_edit_item_bloc.dart';

@freezed
class AddEditItemEvent with _$AddEditItemEvent {
  const factory AddEditItemEvent.initialiseComponents() = _InitialiseComponents;
  const factory AddEditItemEvent.load(String itemId) = _Load;
  const factory AddEditItemEvent.update(String key, dynamic value) = _Update;
  const factory AddEditItemEvent.updateCategory(ItemCategory category, bool hasThisCategory) = _UpdateCategory;
  const factory AddEditItemEvent.setImage(PlatformFile file) = _SetImage;
  const factory AddEditItemEvent.setComponentItems(List<ComponentItem> componentItems) = _SetComponents;
  const factory AddEditItemEvent.save() = _Save;
}
