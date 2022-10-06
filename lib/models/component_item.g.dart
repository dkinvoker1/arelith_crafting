// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComponentItem _$$_ComponentItemFromJson(Map json) => _$_ComponentItem(
      item: Item.fromJson(Map<String, Object?>.from(json['item'] as Map)),
      quantity: json['quantity'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ComponentItemToJson(_$_ComponentItem instance) =>
    <String, dynamic>{
      'item': instance.item.toJson(),
      'quantity': instance.quantity,
    };
