import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_storage/firebase_storage.dart";
import 'package:file_picker/file_picker.dart';

import '../models/item.dart';

@singleton
class DatabaseService {
  // String _getUId() {
  //   return FirebaseAuth.instance.currentUser!.uid;
  // }

  Future<Exception?> addImage(
      {required Item item, required PlatformFile file}) async {
    final storageRef = FirebaseStorage.instance.ref();
    final itemsRef =
        FirebaseFirestore.instance.collection('items').withConverter<Item>(
              fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
              toFirestore: (result, _) => result.toJson(),
            );

    if (file.bytes != null) {
      final fileRef = storageRef.child(file.name);

      try {
        await fileRef.putData(file.bytes!);

        var imageUrl = await getImageUrl(file.name);

        await itemsRef.add(item.copyWith(imageUrl: imageUrl, reference: ['aaa','ccc']));

        return Exception();
      } on Exception catch (e) {
        return e;
      }
    }

    return Exception('No image bytes');
  }

  Future<String> getImageUrl(String fileName) async {
    final storageRef = FirebaseStorage.instance.ref();
    final fileRef = storageRef.child(fileName);
    try {
      return await fileRef.getDownloadURL();
    } on FirebaseException catch (e) {
      log("error: " + e.toString());
      return "";
    }
  }

  Query<Item> getItemsNameQuery(String search) {
    Query<Item> query;
    if (search.isEmpty) {
      query =
          FirebaseFirestore.instance.collection('items').withConverter<Item>(
                fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
                toFirestore: (result, _) => result.toJson(),
              );
    } else {
      query = FirebaseFirestore.instance
          .collection('items')
          .where('name', isEqualTo: search)
          .withConverter<Item>(
            fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
            toFirestore: (result, _) => result.toJson(),
          );
    }

    var q = FirebaseFirestore.instance.collection('items');
    var a = q.get();
    a.then((value) {
      log(value.docs.first.reference.toString());
    });

    return query;
  }
}
