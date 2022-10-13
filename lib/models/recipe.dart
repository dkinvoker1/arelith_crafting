import 'package:freezed_annotation/freezed_annotation.dart';

import 'component_item.dart';

part 'recipe.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Recipe with _$Recipe {
   factory Recipe({
    required ComponentItem item,
    @Default([]) List<Recipe> components,
  }) = _Recipe;
}
