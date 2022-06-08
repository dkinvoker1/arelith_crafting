// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String imageUrl,
    required String name,
    required String description,
    @Default([]) List<String> recipeOfReferencesList,
    @Default('') String documentPath,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);

  factory Item.fromDocumentSnapshot(
          DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      Item.fromJson(snapshot.data()!)
          .copyWith(documentPath: snapshot.reference.path);
}
