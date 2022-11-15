part of 'recipe_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class RecipeState with _$RecipeState {
  factory RecipeState({
    @Default(null) Recipe? recipe,
    // @Default(null) Map<int, List<RecipeItem>>? recipeElements,
  }) = _RecipeState;
}
