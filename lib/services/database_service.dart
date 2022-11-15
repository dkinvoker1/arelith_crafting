// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'dart:typed_data';

import 'package:arelith_crafting/models/recipe.dart';
import 'package:arelith_crafting/models/recipe_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_storage/firebase_storage.dart";

import '../models/component_item.dart';
import '../models/item.dart';

@singleton
class DatabaseService {
  // String _getUId() {
  //   return FirebaseAuth.instance.currentUser!.uid;
  // }

  Future<Exception?> updateItem(
      {required Item item,
      required String fileName,
      required Uint8List fileBytes}) async {
    final storageRef = FirebaseStorage.instance.ref();

    final fileRef = storageRef.child(fileName);

    try {
      await fileRef.putData(fileBytes);

      var imageUrl = await getImageUrl(fileName);

      if (item.documentId.isNotEmpty) {
        var itemRef = FirebaseFirestore.instance
            .collection('items')
            .doc(item.documentId)
            .withConverter<Item>(
              fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
              toFirestore: (result, _) => result.toJson(),
            );
        await itemRef.update(item.copyWith(imageUrl: imageUrl).toJson());
      } else {
        var itemsRef = FirebaseFirestore.instance
            .collection('items')
            .withConverter<Item>(
              fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
              toFirestore: (result, _) => result.toJson(),
            );

        item = item.copyWith(imageUrl: imageUrl);
        var itemRef = await itemsRef.add(item);

        item = item.copyWith(documentId: itemRef.id);
        await itemRef.update(item.toJson());
      }

      return null;
    } on Exception catch (e) {
      return e;
    }
  }

  Future<String> getImageUrl(String fileName) async {
    final storageRef = FirebaseStorage.instance.ref();
    final fileRef = storageRef.child(fileName);
    try {
      var downloadaUrl = await fileRef.getDownloadURL();
      return downloadaUrl;
    } on FirebaseException catch (e) {
      log("error: $e");
      return "";
    }
  }

  Future<void> deleteItem(String itemId) async {
    var itemPath = 'items/$itemId';

    await FirebaseFirestore.instance.doc(itemPath).delete();
  }

  Future<Uint8List?> getImageBytesByUrl(String imageUrl) async {
    Uint8List? imageBytes;

    final storageRef = FirebaseStorage.instance.ref();

    var imageMetadata = await storageRef.child(imageUrl).getMetadata();

    if (imageMetadata.size != null) {
      await storageRef
          .child(imageUrl)
          .getData(imageMetadata.size!)
          .then((value) => {imageBytes = value});
    }

    return imageBytes;
  }

  Stream<QuerySnapshot<Item>> getItemsStream() {
    Stream<QuerySnapshot<Item>> query = FirebaseFirestore.instance
        .collection('items')
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromDocumentSnapshot(snapshot),
          toFirestore: (result, _) => result.toJson(),
        )
        .snapshots();

    return query;
  }

  Future<QuerySnapshot<Item>> getItemsFuture() {
    var query = FirebaseFirestore.instance
        .collection('items')
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromDocumentSnapshot(snapshot),
          toFirestore: (result, _) => result.toJson(),
        )
        .get();

    return query;
  }

  Future<DocumentSnapshot<Item>> getItemById(String itemId) async {
    var itemPath = 'items/$itemId';

    var item = await FirebaseFirestore.instance
        .doc(itemPath)
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromDocumentSnapshot(snapshot),
          toFirestore: (result, _) => result.toJson(),
        )
        .get();

    return item;
  }

  Future<Recipe> getRecipe(
      ComponentItem finalComponentItem, int aboveMe) async {
    var recipe = Recipe(
      recipeItem: RecipeItem(item: finalComponentItem, key: GlobalKey()),
      components: List<Recipe>.empty(growable: true),
    );

    var componentsList = await getComponentItems(finalComponentItem.item);

    if (componentsList.isNotEmpty) {
      int maxDepth = 0;

      for (var component in componentsList) {
        var componentRecipe = await getRecipe(component, aboveMe + 1);
        recipe.components.add(componentRecipe);

        maxDepth = maxDepth < componentRecipe.underMe
            ? componentRecipe.underMe
            : maxDepth;
      }

      recipe = recipe.copyWith(underMe: maxDepth + 1);
    }

    return recipe;
  }

  Future<List<ComponentItem>> getComponentItems(Item finalItem) async {
    var componentIds = finalItem.components.map((e) => e.documentId).toList();

    if (componentIds.isEmpty) {
      return List.empty();
    }

    var itemsQuerySnapshot = await FirebaseFirestore.instance
        .collection('items')
        .where('documentId', whereIn: componentIds)
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromDocumentSnapshot(snapshot),
          toFirestore: (result, _) => result.toJson(),
        )
        .get();

    var itemDocumentSnapshotsList = itemsQuerySnapshot.docs;
    var itemsList = itemDocumentSnapshotsList.map((e) => e.data()).toList();

    List<ComponentItem> componentItemList = [];

    for (var item in itemsList) {
      var quantity = finalItem.components
          .firstWhere((e) => e.documentId == item.documentId)
          .quantity;
      var componentItem = ComponentItem(item: item, quantity: quantity);
      componentItemList.add(componentItem);
    }

    return componentItemList;
  }
}
