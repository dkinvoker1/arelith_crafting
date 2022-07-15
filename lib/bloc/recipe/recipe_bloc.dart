// ignore_for_file: depend_on_referenced_packages

import 'package:arelith_crafting/models/item.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/recipe.dart';
import '../../services/database_service.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(_RecipeState()) {
    on<_Search>((event, emit) async {
      var recipe = await getRecipe(event.rootItemDocumentPath);

      emit.call(state.copyWith(recipe: recipe));
    });
  }

  Future<Recipe> getRecipe(String rootItemPath) async {
    Recipe recipe =
        Recipe(item: const Item(imageUrl: '', name: '', description: ''));

    var itemSnapshot = await DatabaseService().getItemById(rootItemPath);
    if (!itemSnapshot.exists) {
      return recipe;
    }

   var item = itemSnapshot.data()!;

    recipe = recipe.copyWith(item: item, components: await getItemComponents(rootItemPath));

    return recipe;
  }

  Future<List<Recipe>> getItemComponents(String rootItemPath) async {
    var componentsSnapshot =
        await DatabaseService().getComponentsByItemId(rootItemPath);

    var componentList = <Recipe>[];
    for (var element in componentsSnapshot.docs) {
      var item = element.data();
      var recipe = Recipe(item: item);
      recipe = recipe.copyWith(components: await getItemComponents(item.documentId));
      componentList.add(recipe);
    }

    return componentList;
  }
}
