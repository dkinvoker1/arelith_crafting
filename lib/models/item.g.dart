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
      'components': instance.components.map((e) => e.toJson()).toList(),
    };
