part of 'add_edit_item_bloc.dart';

@freezed
class AddEditItemEvent with _$AddEditItemEvent {
  const factory AddEditItemEvent.load(String itemId) = _Load;
  const factory AddEditItemEvent.loaded() = _Loaded;
  const factory AddEditItemEvent.update(String key, dynamic value) = _Update;
  const factory AddEditItemEvent.setImage(PlatformFile file) = _SetImage;
  const factory AddEditItemEvent.save() = _Save;
}