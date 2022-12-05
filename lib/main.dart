// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'get_it_instance.dart';
import 'routes/router.gr.dart';

Future<void> main() async {
  configureDependencies();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);
  static AppState of(BuildContext context) =>
      context.findAncestorStateOfType<AppState>()!;
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  late final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
    );
  }
}
