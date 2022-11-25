part of 'item_list_bloc.dart';

@freezed
class ItemListEvent with _$ItemListEvent {
  const factory ItemListEvent.initialse() = _Initialse;
  const factory ItemListEvent.updateNameFilter(String nameFilter) = _UpdateNameFilter;
  const factory ItemListEvent.updateCategoryFilter(ItemCategory itemCategory, bool value) = _UpdateCategoryFilter;
  const factory ItemListEvent.delete(String itemId) = _Delete;
}