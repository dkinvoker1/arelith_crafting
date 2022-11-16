// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages, overridden_fields

import 'package:arelith_crafting/models/component_item.dart';
import 'package:arelith_crafting/models/recipe.dart';
import 'package:arelith_crafting/widgets/component/image_button.dart';
import 'package:arelith_crafting/widgets/item/image.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/recipe/recipe_bloc.dart';
import '../models/recipe_item.dart';
import '../services/recipe_lines_painter.dart';
import '../services/recipe_lines_painter2.dart';

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
          if (state.recipe == null
              //  || state.recipeElements == null
              ) {
            return Center(child: CircularProgressIndicator());
          }

          return RecipeWidget(
            recipe: state.recipe!,
            // recipeElements: state.recipeElements!,
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
    // required this.recipeElements
  }) : super(key: key);

  final Recipe recipe;
  // final Map<int, List<RecipeItem>> recipeElements;

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  var boxKey = GlobalKey();
  Map<Offset, List<Offset>> aaa = {};

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

      // for (var element in widget.recipe.components) {
      //   var key = element.recipeItem.key;

      //   if (key != null && key.currentContext != null) {
      //     var off = getKeyOffset(key);

      //     changeMyOffset(off);
      //   }
      // }

      getRecipeOffsetMap(widget.recipe);
    });
  }

  void changeBoxOffset(Offset offset) {
    setState(() {
      boxOffset = offset;
    });
  }

  Offset getKeyOffset(GlobalKey key) {
    var itemBox = key.currentContext!.findRenderObject() as RenderBox;
    var x = itemBox.localToGlobal(Offset.zero).dx + itemBox.size.width / 2;
    var y = itemBox.localToGlobal(Offset.zero).dy + itemBox.size.height / 2;
    var off = Offset(x, y);

    return off;
  }

  void changeMyOffset(Offset offset) {
    setState(() {
      myOffset = offset;
    });
  }

  void getRecipeOffsetMap(Recipe recipe) {
    // for (var element in widget.recipe.components) {
    //   var key = element.recipeItem.key;

    //   if (key != null && key.currentContext != null) {
    //     var off = getKeyOffset(key);

    //     changeMyOffset(off);
    //   }
    // }

    var key = recipe.recipeItem.key;
    if (recipe.isPlaceholder || key == null || key.currentContext == null) {
      return;
    }

    var hasNoPlaceholderComponents = recipe.components.isNotEmpty &&
        recipe.components.any((element) => !element.isPlaceholder);

    if (!hasNoPlaceholderComponents) {
      return;
    }

    List<Offset> mmm = [];

    for (var element in recipe.components) {
      var componentKey = element.recipeItem.key;
      if (componentKey != null && componentKey.currentContext != null) {
        var componentOffset = getKeyOffset(componentKey);
        mmm.add(componentOffset);
      }
    }

    var off = getKeyOffset(key);

    var ccc = {off: mmm};

    Map<Offset, List<Offset>> bbbb = {};
    bbbb.addAll(ccc);

    setState(() {
      aaa = bbbb;
    });
  }

  @override
  Widget build(BuildContext context) {
    var columnChildren = <Expanded>[];

    // for (var element in widget.recipeElements.entries) {
    //   var row = Row(
    //     children: [],
    //   );

    //   for (var recipeElement in element.value) {
    //     var elementFlex = (recipeElement.flex * 1000000).ceil();

    //     Widget expandedRecipe = Container();

    //     if (recipeElement.item != null && recipeElement.key != null) {
    //       var key = recipeElement.key!;
    //       itemKeys.putIfAbsent(recipeElement.item!, () => key);

    //       expandedRecipe =
    //           ComponentImageButton(key: key, component: recipeElement.item!);
    //     }

    //     row.children.add(Expanded(flex: elementFlex, child: expandedRecipe));
    //   }

    //   columnChildren.add(Expanded(child: row));
    // }

    for (var i = 0; i < widget.recipe.underMe + 1; i++) {
      var row = Row(
        children: [],
      );
      columnChildren.add(Expanded(child: row));
    }

    setRecipe(widget.recipe, columnChildren);

//=======
    var recipeWidget = Column(
      key: boxKey,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      // children: columnChildren,
      children: columnChildren,
    );

    return CustomPaint(
      painter: RecipeLinesPainter2(boxOffset: boxOffset, offsetMap: aaa),
      child: recipeWidget,
    );

    // return CustomPaint(
    //   painter: RecipeLinesPainter(
    //       parentOffset: Offset(0, 0),
    //       childOffset: myOffset,
    //       boxOffset: boxOffset),
    //   child: recipeWidget,
    // );

    // return recipeWidget;
  }

  void setRecipe(Recipe r, List<Expanded> list) {
    var elementFlex = (r.recipeItem.flex * 1000000).ceil();
    Widget expandedRecipe = Container();

    if (!r.isPlaceholder) {
      expandedRecipe = ComponentImageButton(
          key: r.recipeItem.key, component: r.recipeItem.item!);
    }

    var row = list[r.recipeItem.level].child as Row;
    row.children.add(Expanded(flex: elementFlex, child: expandedRecipe));

    if (r.components.isNotEmpty) {
      for (var element in r.components) {
        setRecipe(element, list);
      }
    }
  }
}
