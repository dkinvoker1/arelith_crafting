// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map json) => _$_Item(
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      recipeOfReferencesList: (json['recipeOfReferencesList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      documentPath: json['documentPath'] as String? ?? '',
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
      'recipeOfReferencesList': instance.recipeOfReferencesList,
      'documentPath': instance.documentPath,
    };
