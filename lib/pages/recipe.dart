// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../bloc/recipe/recipe_bloc.dart';
import '../models/item.dart';
import '../services/recipe_lines_painter.dart';
import '../widgets/trackable_item_image.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key, required this.rootItemDocumentPath}) : super(key: key);
  final String rootItemDocumentPath;

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeBloc()..add(RecipeEvent.search(widget.rootItemDocumentPath)),
      child: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state.recipe == null) {
            return Container();
          }

          var bloc = BlocProvider.of<RecipeBloc>(context);
          return CustomPaint(
            painter: RecipeLinesPainter(state.points),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FutureBuilder(
                  future: state.recipe!.item,
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot<Item>> snapshot) {
                    if (snapshot.data == null ||
                        snapshot.data!.data() == null) {
                      return CircularProgressIndicator();
                    }

                    var item = snapshot.data!.data()!;
                    return TrackableItemImage(
                      item: item,
                      bloc: bloc,
                    );
                  },
                ),
                FutureBuilder(
                  future: state.recipe?.components,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot<Item>> snapshot) {
                    if (snapshot.data != null &&
                        snapshot.data!.docs.isNotEmpty) {
                      var itemWidgetList = <Widget>[];

                      for (var itemQuery in snapshot.data!.docs) {
                        var item = TrackableItemImage(
                          item: itemQuery.data(),
                          bloc: bloc,
                        );
                        itemWidgetList.add(item);
                      }

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: itemWidgetList,
                      );
                    }
                    return SizedBox();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
