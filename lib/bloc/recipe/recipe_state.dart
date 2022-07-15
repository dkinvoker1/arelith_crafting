part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  factory RecipeState({
    @Default(null) Recipe? recipe,
  }) = _RecipeState;
}
