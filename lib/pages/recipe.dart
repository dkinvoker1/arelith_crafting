// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages, overridden_fields, prefer_const_literals_to_create_immutables

import 'package:arelith_crafting/widgets/component/image_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/recipe/recipe_bloc.dart';
import '../models/recipe/recipe.dart';
import '../helpers/recipe_lines_painter.dart';

class RecipePage extends StatefulWidget {
  const RecipePage(
      {Key? key,
      @PathParam('rootItemDocumentId') required this.rootItemDocumentId})
      : super(key: key);
  final String rootItemDocumentId;

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipeBloc()..add(RecipeEvent.search(widget.rootItemDocumentId)),
      child: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state.recipe == null) {
            return Center(child: CircularProgressIndicator());
          }

          return RecipeWidget(
            recipe: state.recipe!,
          );
        },
      ),
    );
  }
}

//======================== recipe widget ========================

class RecipeWidget extends StatefulWidget {
  const RecipeWidget({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  var boxKey = GlobalKey();

  Map<GlobalKey, List<GlobalKey>> getRecipeKeyMap(Recipe recipe) {
    Map<GlobalKey, List<GlobalKey>> keyMapList = {};

    var parentKey = recipe.recipeItem.key;

    if (recipe.isPlaceholder || parentKey == null) {
      return keyMapList;
    }

    var noPlaceholderComponents =
        recipe.components.where((element) => !element.isPlaceholder);

    if (noPlaceholderComponents.isEmpty) {
      return keyMapList;
    }

    List<GlobalKey> componentKeyList = [];

    for (var component in noPlaceholderComponents) {
      var componentKey = component.recipeItem.key;

      if (componentKey != null) {
        componentKeyList.add(componentKey);
      }
    }

    keyMapList.addAll({parentKey: componentKeyList});

    for (var component in noPlaceholderComponents) {
      var componentKeyMapList = getRecipeKeyMap(component);
      keyMapList.addAll(componentKeyMapList);
    }

    return keyMapList;
  }

  @override
  Widget build(BuildContext context) {
    var columnChildren = <Expanded>[];

    for (var i = 0; i < widget.recipe.underMe + 1; i++) {
      var row = Row(
        children: [],
      );
      columnChildren.add(Expanded(child: row));
    }

    setRecipe(widget.recipe, columnChildren, 1);

    var keyMap = getRecipeKeyMap(widget.recipe);

    var recipeWidget = Column(
      key: boxKey,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: columnChildren,
    );

    return CustomPaint(
      painter: RecipeLinesPainter(boxKey: boxKey, keyMap: keyMap),
      child: recipeWidget,
    );
  }

  void setRecipe(Recipe recipe, List<Expanded> list, int multiplier) {
    var elementFlex = (recipe.recipeItem.flex * 1000000).ceil();
    Widget expandedRecipe = Container();

    if (!recipe.isPlaceholder) {
      expandedRecipe = ComponentImageButton(
          key: recipe.recipeItem.key,
          component: recipe.recipeItem.item!,
          multiplier: multiplier);
    }

    var row = list[recipe.recipeItem.level].child as Row;
    row.children.add(Expanded(flex: elementFlex, child: expandedRecipe));

    if (recipe.components.isNotEmpty) {
      var componentMltiplier = recipe.recipeItem.item != null
          ? multiplier * recipe.recipeItem.item!.quantity
          : multiplier;
      for (var element in recipe.components) {
        setRecipe(element, list, componentMltiplier);
      }
    }
  }
}
