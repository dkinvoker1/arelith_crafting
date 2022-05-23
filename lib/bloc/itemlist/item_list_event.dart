part of 'item_list_bloc.dart';

@freezed
class ItemListEvent with _$ItemListEvent {
  const factory ItemListEvent.started() = _Started;
  const factory ItemListEvent.ended() = _Ended;
}