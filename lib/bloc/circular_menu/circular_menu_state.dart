part of 'circular_menu_bloc.dart';

@freezed
class CircularMenuState with _$CircularMenuState {
  const factory CircularMenuState({
    @Default(null) Item? clickedItem,
    @Default(Offset(100, 100)) Offset offset,
  }) = _CircularMenuState;
}
