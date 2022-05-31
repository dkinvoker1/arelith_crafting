part of 'add_item_bloc.dart';

@freezed
class AddItemEvent with _$AddItemEvent {
  const factory AddItemEvent.update(String key, dynamic value) = _Update;
  const factory AddItemEvent.setImage(PlatformFile file) = _SetImage;
  const factory AddItemEvent.save() = _Save;
}