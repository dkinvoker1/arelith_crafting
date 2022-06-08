import 'package:arelith_crafting/models/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
   factory Recipe({
    required Future<DocumentSnapshot<Item>> item,
    required Future<QuerySnapshot<Item>> components,
  }) = _Recipe;
}
