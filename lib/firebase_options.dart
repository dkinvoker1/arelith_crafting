// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members, depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCzGorMjIKPyx95UxRi5FmSp_ZRqEc8OhE',
    appId: '1:706810983721:web:7645de3782ea96e36d3338',
    messagingSenderId: '706810983721',
    projectId: 'arelith-crafting',
    authDomain: 'arelith-crafting.firebaseapp.com',
    storageBucket: 'arelith-crafting.appspot.com',
    measurementId: 'G-4XPCNRGB1B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAdaZecrkzKy_XMlkybSCBF0RylLpI0XA',
    appId: '1:706810983721:android:759ad32985531bad6d3338',
    messagingSenderId: '706810983721',
    projectId: 'arelith-crafting',
    storageBucket: 'arelith-crafting.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMV_pU0ZK3K2Kw_A-h5RHEyhFZ1KMO944',
    appId: '1:706810983721:ios:77ed4ab0db505d626d3338',
    messagingSenderId: '706810983721',
    projectId: 'arelith-crafting',
    storageBucket: 'arelith-crafting.appspot.com',
    iosClientId: '706810983721-ub8e68b5vfse511ao56mhks5djo9hp2k.apps.googleusercontent.com',
    iosBundleId: 'com.example.arelithCrafting',
  );
}
