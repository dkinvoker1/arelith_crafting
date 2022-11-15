import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'component_item.dart';

part 'recipe_item.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class RecipeItem with _$RecipeItem {
  factory RecipeItem({
    ComponentItem? item,
    GlobalKey? key,
    @Default(0) int level,
    @Default(0) double flex,
  }) = _RecipeItem;
}
