// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages

import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../bloc/recipe/recipe_bloc.dart';
import '../models/item.dart';
import '../models/recipe.dart';
import '../services/recipe_lines_painter.dart';
import '../widgets/item_image.dart';

class RecipePage extends StatefulWidget {
  const RecipePage(
      {Key? key,
      @PathParam('rootItemDocumentPath') required this.rootItemDocumentPath})
      : super(key: key);
  final String rootItemDocumentPath;

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipeBloc()..add(RecipeEvent.search(widget.rootItemDocumentPath)),
      child: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state.recipe == null) {
            return CircularProgressIndicator();
          }

          var bloc = BlocProvider.of<RecipeBloc>(context);

          return RecipeWidget(recipe: state.recipe!);
        },
      ),
    );
  }
}

class InheritedRecipe extends InheritedWidget {
  InheritedRecipe(
      {Key? key,
      required this.offset,
      required this.changeOffset,
      required this.child})
      : super(key: key, child: child);

  final Widget child;
  final Offset offset;
  final Function changeOffset;

  static InheritedRecipe? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedRecipe>();
  }

  @override
  bool updateShouldNotify(InheritedRecipe oldWidget) {
    return true;
  }
}

class RecipeWidget extends StatefulWidget {
  RecipeWidget({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  var key = GlobalKey();
  Offset myOffset = Offset.zero;

  void changeMyOffset(Offset off) {
    setState(() {
      myOffset = off;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      if (key.currentContext != null) {
        var box = key.currentContext!.findRenderObject() as RenderBox;
        var x = box.localToGlobal(Offset.zero).dx + box.size.width / 2;
        var y = box.localToGlobal(Offset.zero).dy - box.size.height / 2;
        //ustawianie wartości ++++++++++++++++++++++++++++++++++++++
        changeMyOffset(Offset(x, y));

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var incheritedRecipe = InheritedRecipe.of(context);

    var itemWidgetList = <Widget>[];

    for (var itemQuery in widget.recipe.components) {
      var item = Flexible(
        child: RecipeWidget(recipe: itemQuery),
      );
      itemWidgetList.add(item);
    }

    var recipeWidget = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // incheritedRecipe == null
        //     ? Text("nie mam taty")
        //     : Text(incheritedRecipe.offset.toString()),
        // Text(myOffset.toString()),
        Flexible(child: ItemImage(key: key, item: widget.recipe.item)),
        Flexible(
          fit: FlexFit.tight,
          child: InheritedRecipe(
              offset: myOffset,
              changeOffset: changeMyOffset,
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
            painter: RecipeLinesPainter(incheritedRecipe.offset, myOffset),
            child: recipeWidget,
          );
  }
}
