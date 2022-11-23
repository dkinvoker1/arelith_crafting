// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map json) => _$_Item(
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      documentId: json['documentId'] as String? ?? '',
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ItemCategoryEnumMap, e))
              .toList() ??
          const [],
      components: (json['components'] as List<dynamic>?)
              ?.map((e) =>
                  Component.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
      'height': instance.height,
      'width': instance.width,
      'documentId': instance.documentId,
      'categories':
          instance.categories.map((e) => _$ItemCategoryEnumMap[e]).toList(),
      'components': instance.components.map((e) => e.toJson()).toList(),
    };

const _$ItemCategoryEnumMap = {
  ItemCategory.smithing: 'smithing',
  ItemCategory.carpentry: 'carpentry',
  ItemCategory.tailoring: 'tailoring',
  ItemCategory.artCrafting: 'artCrafting',
  ItemCategory.herbalism: 'herbalism',
  ItemCategory.alchemy: 'alchemy',
};
