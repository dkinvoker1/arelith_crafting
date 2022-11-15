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
  Map<ComponentItem, GlobalKey> itemKeys = {};
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

      for (var element in itemKeys.entries) {
        var item = element.key;
        var key = element.value;

        if (key.currentContext != null) {
          var off = getKeyOffset(key);

          changeMyOffset(off);
        }
      }
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
    var y = itemBox.localToGlobal(Offset.zero).dy + itemBox.size.height;
    var off = Offset(x, y);

    return off;
  }

  void changeMyOffset(Offset offset) {
    setState(() {
      myOffset = offset;
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
      painter: RecipeLinesPainter(
          parentOffset: Offset(0, 0),
          childOffset: myOffset,
          boxOffset: boxOffset),
      child: recipeWidget,
    );

    // return recipeWidget;
  }

  void setRecipe(Recipe r, List<Expanded> list) {
    var elementFlex = (r.recipeItem.flex * 1000000).ceil();
    Widget expandedRecipe = Container();

    if (!r.isPlaceholder) {
      expandedRecipe = ComponentImageButton(
          key: r.recipeItem.key, component: r.recipeItem.item!);
    }

    var a = list.length;
    var b = r.recipeItem.level;
    if (a == b) {
      var c = 1;
      return;
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
