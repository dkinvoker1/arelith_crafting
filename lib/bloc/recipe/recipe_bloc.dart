// ignore_for_file: depend_on_referenced_packages

import 'package:arelith_crafting/models/item.dart';
import 'package:arelith_crafting/models/recipe.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
        var recipe = await DatabaseService().getRecipe(item);

        emit.call(state.copyWith(recipe: recipe));
      }
    });
  }
}
