// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/component/component_item.dart';
import '../../models/recipe/recipe.dart';
import '../../models/recipe/recipe_item.dart';
import '../../repositories/items_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(_RecipeState()) {
    on<_Search>((event, emit) async {
      var itemSnapshot =
          await ItemsRepository().getItemById(event.rootItemDocumentPath);

      if (itemSnapshot.exists) {
        var item = itemSnapshot.data()!;
        var itemComponent = ComponentItem(item: item);

        var recipe = await ItemsRepository().getRecipe(itemComponent, 0);
        recipe = setRecipePositions(recipe, 1, 0, recipe.underMe + 1);
        
        emit.call(state.copyWith(recipe: recipe));
      }
    });
  }

  Recipe setRecipePositions(Recipe recipe, double flex, int level, int depth) {
    var recipeItem = recipe.recipeItem.copyWith(flex: flex, level: level);

    List<Recipe> newComponents = [];

    for (var component in recipe.components) {
      var newComponent = setRecipePositions(
          component, flex / recipe.components.length, level + 1, depth);
      newComponents.add(newComponent);
    }

    if (recipe.components.isEmpty && level + 1 < depth) {
      var recipePlaceholder = createRecipePlaceholder(flex, level + 1, depth);
      newComponents.add(recipePlaceholder);
    }

    var newRecipe =
        recipe.copyWith(recipeItem: recipeItem, components: newComponents);
    return newRecipe;
  }

  Recipe createRecipePlaceholder(double flex, int level, int depth) {
    var emptyRecipeItem = RecipeItem(level: level, flex: flex);
    var emptyRecipe = Recipe(recipeItem: emptyRecipeItem, isPlaceholder: true);

    if (level + 1 < depth) {
      emptyRecipe = emptyRecipe.copyWith(
          components: [createRecipePlaceholder(flex, level + 1, depth)]);
    }

    return emptyRecipe;
  }
}
