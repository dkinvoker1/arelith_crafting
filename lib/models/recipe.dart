import 'package:arelith_crafting/models/recipe_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Recipe with _$Recipe {
   factory Recipe({
    required RecipeItem recipeItem,
    @Default([]) List<Recipe> components,
    @Default(0) int underMe,
    @Default(false) bool isPlaceholder,
  }) = _Recipe;
}
