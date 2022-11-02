part of 'item_list_bloc.dart';

@freezed
class ItemListEvent with _$ItemListEvent {
  const factory ItemListEvent.initialse() = _Initialse;
  const factory ItemListEvent.delete(String itemId) = _Delete;
}