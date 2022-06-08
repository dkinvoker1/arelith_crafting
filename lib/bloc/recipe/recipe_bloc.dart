import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
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

    on<_AddPoint>((event, emit) async {
      List<Offset> list = state.points.toList();
      list.add(event.offset);
      emit.call(state.copyWith(points: list));
    });
  }

  Future<Recipe> getRecipe(String rootItemPath) async {
    var itemSnapshot = DatabaseService().getItemById(rootItemPath);
    var componentsSnapshot =
        DatabaseService().getComponentsByItemId(rootItemPath);

    Recipe recipe = Recipe(item: itemSnapshot, components: componentsSnapshot);

    return recipe;
  }
}
