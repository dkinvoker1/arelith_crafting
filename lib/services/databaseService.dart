import 'dart:developer';
import 'dart:html';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_storage/firebase_storage.dart";
import 'package:file_picker/file_picker.dart';

import '../models/item.dart';

@singleton
class DatabaseService {
  // String _getUId() {
  //   return FirebaseAuth.instance.currentUser!.uid;
  // }

  Future<void> addImage() async {
    var picked = await FilePicker.platform.pickFiles(allowMultiple: false);

    final storageRef = FirebaseStorage.instance.ref();
    final itemsRef =
        FirebaseFirestore.instance.collection('items').withConverter<Item>(
              fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
              toFirestore: (result, _) => result.toJson(),
            );

    if (picked != null && picked.files.first.bytes != null) {
      var file = picked.files.first;
      final fileRef = storageRef.child(file.name);

      try {
        await fileRef.putData(file.bytes!);
        await itemsRef.add(Item(
            imageUrl: file.name,
            name: "name",
            description: "filer description"));
      } on Exception catch (e) {
        log(e.toString());
      }
    }
  }

  Future<String> getImage() async {
    final storageRef = FirebaseStorage.instance.ref();
    final fileRef = storageRef.child("door_heven.jpg");
    try {
      var a = await fileRef.getDownloadURL();
      return a;
    } on FirebaseException catch (e) {
      log("error: " + e.toString());
      return "";
    }
  }


  Stream<QuerySnapshot<Item>> getItemsStream() {
    return FirebaseFirestore.instance
        .collection('items')
        .withConverter<Item>(
          fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
          toFirestore: (result, _) => result.toJson(),
        )
        .snapshots();
  }

}
