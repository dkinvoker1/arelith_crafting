part of 'equipment_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class EquipmentState with _$EquipmentState {  
  factory EquipmentState({
    @Default([]) List<ComponentItem> resultsList,
    @Default([]) List<ComponentItem> componentsList,
  }) = _EquipmentState;
}
