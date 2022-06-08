part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.search(String rootItemDocumentPath) = _Search;
  const factory RecipeEvent.addPoint(Offset offset) = _AddPoint;
}