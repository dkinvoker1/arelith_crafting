// ignore_for_file: depend_on_referenced_packages

import 'package:arelith_crafting/models/component_item.dart';
import 'package:arelith_crafting/models/recipe.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/recipe_item.dart';
import '../../services/database_service.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(_RecipeState()) {
    on<_Search>((event, emit) async {
      var itemSnapshot =
          await DatabaseService().getItemById(event.rootItemDocumentPath);

      if (itemSnapshot.exists) {
        var item = itemSnapshot.data()!;
        var itemComponent = ComponentItem(item: item);
        var recipe = await DatabaseService().getRecipe(itemComponent, 0);

        var aaaa = setRecipePositions(recipe, 1, 0, recipe.underMe + 1);

        // var recipeElementList =
        //     getRecipeElementList(recipe, 1, 0, recipe.underMe);

        // recipeElementList.sort((f, s) => f.level.compareTo(s.level));

        // var groupedRecipeElementLists =
        //     groupBy(recipeElementList, (RecipeItem obj) => obj.level);

        emit.call(state.copyWith(recipe: aaaa
            // recipe: recipe
            // , recipeElements: groupedRecipeElementLists
            ));
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

  // List<RecipeItem> getRecipeElementList(
  //     Recipe recipe, double flex, int level, int depth) {
  //   var recipeElementList = [
  //     RecipeItem(item: recipe.recipeItem.item, flex: flex, level: level)
  //   ];

  //   for (var component in recipe.components) {
  //     var childRecipeElementList = getRecipeElementList(
  //         component, flex / recipe.components.length, level + 1, depth);
  //     recipeElementList.addAll(childRecipeElementList);
  //   }

  //   if (recipe.components.isEmpty) {
  //     for (var i = level; i < depth; i++) {
  //       recipeElementList.add(RecipeItem(level: i + 1, flex: flex));
  //     }
  //   }

  //   return recipeElementList;
  // }
}
