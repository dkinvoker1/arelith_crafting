part of 'item_card_bloc.dart';

@freezed
class ItemCardEvent with _$ItemCardEvent {
  const factory ItemCardEvent.delete(String itemId) = _Delete;
}