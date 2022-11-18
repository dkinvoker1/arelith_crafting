// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../component/component.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Item with _$Item {
  const factory Item({
    required String imageUrl,
    required String name,
    required String description,
    required int height,
    required int width,
    @Default('') String documentId,
    @Default([]) List<Component> components,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);

  factory Item.fromDocumentSnapshot(
          DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      Item.fromJson(snapshot.data()!)
          .copyWith(documentId: snapshot.reference.id);
}
