part of 'circular_menu_bloc.dart';

@freezed
class CircularMenuEvent with _$CircularMenuEvent {
  const factory CircularMenuEvent.setItem(Offset offset, Item? newItem) =
      _SetItem;

  const factory CircularMenuEvent.clearItem() = _ClearItem;
}
