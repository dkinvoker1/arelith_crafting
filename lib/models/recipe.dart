import 'package:arelith_crafting/models/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
   factory Recipe({
    required Item item,
    @Default([]) List<Recipe> components,
  }) = _Recipe;
}
