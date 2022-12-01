// ignore_for_file: depend_on_referenced_packages

import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';

@singleton
class LogInRepository {
  Future<Exception?> logIn(String login, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: login, password: password);

      return null;
    } catch (e) {
      return e as Exception;
    }
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Stream<User?> getLogInUserStream() {
    return FirebaseAuth.instance.authStateChanges();
  }

  Future<bool> isLoggedIn() async {
    var currentUser = FirebaseAuth.instance.currentUser;
    return currentUser == null ? false : true;
  }
}
