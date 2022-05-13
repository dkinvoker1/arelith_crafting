import 'dart:developer';
import 'dart:html';

import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_storage/firebase_storage.dart";
import 'package:file_picker/file_picker.dart';

import '../models/result.dart';

@singleton
class DatabaseService {
  String _getUId() {
    return FirebaseAuth.instance.currentUser!.uid;
  }
  
  Future<void> addImage() async {
        var picked = await FilePicker.platform.pickFiles();

        // if (picked != null) {
        //   print(picked.files.first.name);
        // }



// Create a storage reference from our app
    final storageRef = FirebaseStorage.instance.ref();
    log(storageRef.toString());

// Create a reference to "mountains.jpg"
    final mountainsRef =
        storageRef.child("mountains.jpg");

    log(mountainsRef.toString());

    String filePath = "C:/Stefan/Researche/edu_proj_1/assets/door_hell.jpg";
    log(filePath.toString());
    // File file = File(picked?.files.first.bytes);
    // log(file.toString());
    // var bytes = await file.readAsBytes();
    // log(bytes.toString());
    try {
      log("putFile1");
      if (picked?.files.first.bytes!=null) {
        var a = picked?.files.first.bytes;
      await mountainsRef.putData(a!);
      }
      log("putFile2");
    } on Exception catch (e) {
      log("err");
      log(e.toString());
    }
  }

  Future<void> addResult(bool isHeven) async {
    final resultsRef =
        FirebaseFirestore.instance.collection('results').withConverter<Result>(
              fromFirestore: (snapshot, _) => Result.fromJson(snapshot.data()!),
              toFirestore: (result, _) => result.toJson(),
            );

    await resultsRef.add(
      Result(
          userUid: "_getUId()",
          isHeven: isHeven,
          time: DateTime.now().microsecondsSinceEpoch),
    );
  }

  Stream<QuerySnapshot<Result>> getResultStream() {
    return FirebaseFirestore.instance
        .collection('results')
        .where('userUid', isEqualTo: _getUId())
        .withConverter<Result>(
          fromFirestore: (snapshot, _) => Result.fromJson(snapshot.data()!),
          toFirestore: (result, _) => result.toJson(),
        )
        .snapshots();
  }

  Stream<Iterable<QueryDocumentSnapshot<Result>>> getResultStreamByDate(
      DateTime date) {
    DateTime dayStart = DateTime(date.year, date.month, date.day);
    DateTime dayEnd = DateTime(date.year, date.month, date.day + 1);

    var resultStream = FirebaseFirestore.instance
        .collection('results')
        .withConverter<Result>(
          fromFirestore: (snapshot, _) => Result.fromJson(snapshot.data()!),
          toFirestore: (result, _) => result.toJson(),
        )
        .snapshots();

    final map = resultStream.map((snapshot) => snapshot.docs.where((doc) =>
        doc.data().userUid == _getUId() &&
        dayStart.microsecondsSinceEpoch <= doc["time"] &&
        doc.data().time < dayEnd.microsecondsSinceEpoch));

    return map;
  }
}
