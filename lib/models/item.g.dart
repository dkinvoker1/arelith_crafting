// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

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
      documentId: json['documentId'] as String? ?? '',
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
      'recipeOfReferencesList': instance.recipeOfReferencesList,
      'documentId': instance.documentId,
    };
