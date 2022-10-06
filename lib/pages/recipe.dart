// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages, overridden_fields

import 'package:arelith_crafting/models/recipe.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/recipe/recipe_bloc.dart';
import '../services/recipe_lines_painter.dart';
import '../widgets/item_image.dart';

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

          return RecipeWidget(recipe: state.recipe!);
        },
      ),
    );
  }
}

class InheritedRecipe extends InheritedWidget {
  const InheritedRecipe(
      {Key? key,
      required this.offset,
      required this.changeOffset,
      required this.boxOffset,
      required this.changeBoxOffset,
      required this.child})
      : super(key: key, child: child);

  final Offset offset;
  final Function changeOffset;

  final Offset boxOffset;
  final Function changeBoxOffset;

  @override
  final Widget child;

  static InheritedRecipe? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedRecipe>();
  }

  @override
  bool updateShouldNotify(InheritedRecipe oldWidget) {
    return true;
  }
}

class RecipeWidget extends StatefulWidget {
  const RecipeWidget({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  var key = GlobalKey();
  Offset myOffset = Offset.zero;

  var boxKey = GlobalKey();
  Offset myBoxOffset = Offset.zero;

  void changeMyOffset(Offset offset) {
    setState(() {
      myOffset = offset;
    });
  }

  void changeMyBoxOffset(Offset offset) {
    setState(() {
      myBoxOffset = offset;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      if (key.currentContext != null) {
        var itemBox = key.currentContext!.findRenderObject() as RenderBox;
        var x = itemBox.localToGlobal(Offset.zero).dx + itemBox.size.width / 2;
        var y = itemBox.localToGlobal(Offset.zero).dy + itemBox.size.height;

        changeMyOffset(Offset(x, y));

        var boxBox = boxKey.currentContext!.findRenderObject() as RenderBox;
        var bx = boxBox.localToGlobal(Offset.zero).dx;
        var by = boxBox.localToGlobal(Offset.zero).dy;

        changeMyBoxOffset(Offset(bx, by));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var incheritedRecipe = InheritedRecipe.of(context);

    var itemWidgetList = <Widget>[];

    for (var component in widget.recipe.components) {
      var item = Flexible(
        child: RecipeWidget(
          recipe: component,
        ),
      );
      itemWidgetList.add(item);
    }

    var recipeWidget = Column(
      key: boxKey,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(child: ItemImage(key: key, item: widget.recipe.item)),
        Flexible(
          fit: FlexFit.tight,
          child: InheritedRecipe(
              offset: myOffset,
              changeOffset: changeMyOffset,
              boxOffset: myBoxOffset,
              changeBoxOffset: changeMyBoxOffset,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: itemWidgetList,
              )),
        ),
      ],
    );

    return incheritedRecipe == null
        ? recipeWidget
        : CustomPaint(
            painter: RecipeLinesPainter(
                parentOffset: incheritedRecipe.offset,
                childOffset: myOffset,
                boxOffset: myBoxOffset),
            child: recipeWidget,
          );
  }
}
