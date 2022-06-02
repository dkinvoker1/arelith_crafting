// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map json) => _$_Recipe(
      item: Item.fromJson(Map<String, Object?>.from(json['item'] as Map)),
      components: (json['components'] as List<dynamic>)
          .map((e) => Item.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'item': instance.item.toJson(),
      'components': instance.components.map((e) => e.toJson()).toList(),
    };
