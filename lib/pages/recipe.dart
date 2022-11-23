// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages, overridden_fields

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
  Map<Offset, List<Offset>> offsetMapList = {};

  Offset boxOffset = Offset.zero;
  Offset myOffset = Offset.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      if (boxKey.currentContext != null) {
        var boxBox = boxKey.currentContext!.findRenderObject() as RenderBox;
        var bx = boxBox.localToGlobal(Offset.zero).dx;
        var by = boxBox.localToGlobal(Offset.zero).dy;

        changeBoxOffset(Offset(bx, by));
      }

      var newOffsetMapList = getRecipeOffsetMap(widget.recipe);
      setState(() {
        offsetMapList = newOffsetMapList;
      });
    });
  }

  void changeBoxOffset(Offset offset) {
    setState(() {
      boxOffset = offset;
    });
  }

  Map<Offset, List<Offset>> getRecipeOffsetMap(Recipe recipe) {
    Map<Offset, List<Offset>> newOffsetMapList = {};

    var key = recipe.recipeItem.key;
    if (recipe.isPlaceholder || key == null || key.currentContext == null) {
      return newOffsetMapList;
    }

    var noPlaceholderComponents =
        recipe.components.where((element) => !element.isPlaceholder);

    if (noPlaceholderComponents.isEmpty) {
      return newOffsetMapList;
    }

    var parentOffset = getKeyOffset(key);

    List<Offset> childrenOffsetList = [];

    for (var component in noPlaceholderComponents) {
      var componentKey = component.recipeItem.key;

      if (componentKey != null && componentKey.currentContext != null) {
        var componentOffset = getKeyOffset(componentKey);
        childrenOffsetList.add(componentOffset);
      }
    }

    var mapEntry = {parentOffset: childrenOffsetList};

    newOffsetMapList.addAll(mapEntry);

    for (var element in noPlaceholderComponents) {
      var childOffsetMapList = getRecipeOffsetMap(element);
      newOffsetMapList.addAll(childOffsetMapList);
    }

    return newOffsetMapList;
  }

  Offset getKeyOffset(GlobalKey key) {
    var itemBox = key.currentContext!.findRenderObject() as RenderBox;
    var x = itemBox.localToGlobal(Offset.zero).dx + itemBox.size.width / 2;
    var y = itemBox.localToGlobal(Offset.zero).dy + itemBox.size.height / 2;
    var offset = Offset(x, y);

    return offset;
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

    var recipeWidget = Column(
      key: boxKey,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: columnChildren,
    );

    return CustomPaint(
      painter:
          RecipeLinesPainter2(boxOffset: boxOffset, offsetMap: offsetMapList),
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
