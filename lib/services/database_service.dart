// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_storage/firebase_storage.dart";

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

        await itemsRef.add(item.copyWith(imageUrl: imageUrl));
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

  Stream<QuerySnapshot<Item>> getItems() {
    Stream<QuerySnapshot<Item>> query = FirebaseFirestore.instance
        .collection('items')
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromDocumentSnapshot(snapshot),
          toFirestore: (result, _) => result.toJson(),
        )
        .snapshots();

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

  Future<QuerySnapshot<Item>> getComponentsByItemId(String itemId) async {
    var item = await FirebaseFirestore.instance
        .collection('items')
        .where('recipeOfReferencesList', arrayContains: itemId)
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromDocumentSnapshot(snapshot),
          toFirestore: (result, _) => result.toJson(),
        )
        .get();

    return item;
  }
}
