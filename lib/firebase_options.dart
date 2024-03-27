// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyCUCLmBMEUuDuyo2uzNrmjY6lbZLaoFqq0',
    appId: '1:1924101320:web:323e3c6f8db00410b321fd',
    messagingSenderId: '1924101320',
    projectId: 'hamburger-5a879',
    authDomain: 'hamburger-5a879.firebaseapp.com',
    storageBucket: 'hamburger-5a879.appspot.com',
    measurementId: 'G-8BXFJTE5E2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWO_cOm_WhoZsTbjfigdX1BZFsujZcgHk',
    appId: '1:1924101320:android:f0133ddf0e1af12fb321fd',
    messagingSenderId: '1924101320',
    projectId: 'hamburger-5a879',
    storageBucket: 'hamburger-5a879.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAugEWOuNrKvXG5Ksyy3Xrxkuvvcc5GG8w',
    appId: '1:1924101320:ios:6872d0c377f9ae8db321fd',
    messagingSenderId: '1924101320',
    projectId: 'hamburger-5a879',
    storageBucket: 'hamburger-5a879.appspot.com',
    iosBundleId: 'com.example.hamApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAugEWOuNrKvXG5Ksyy3Xrxkuvvcc5GG8w',
    appId: '1:1924101320:ios:9066bfa8dc669817b321fd',
    messagingSenderId: '1924101320',
    projectId: 'hamburger-5a879',
    storageBucket: 'hamburger-5a879.appspot.com',
    iosBundleId: 'com.example.hamApp.RunnerTests',
  );
}
