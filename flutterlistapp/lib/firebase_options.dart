// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAUgsP5QLBi64rSmzX7Bec5n_s_77-FRJg',
    appId: '1:90207473903:web:aed0acd0d059e6d7814b1a',
    messagingSenderId: '90207473903',
    projectId: 'flutterlistmarcel',
    authDomain: 'flutterlistmarcel.firebaseapp.com',
    storageBucket: 'flutterlistmarcel.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIc_Bj61hAR2ca07u3YLi6LmiUv3KlCJQ',
    appId: '1:90207473903:android:74933e1a9e5eca5c814b1a',
    messagingSenderId: '90207473903',
    projectId: 'flutterlistmarcel',
    storageBucket: 'flutterlistmarcel.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAUgsP5QLBi64rSmzX7Bec5n_s_77-FRJg',
    appId: '1:90207473903:web:9829e119b3ec0267814b1a',
    messagingSenderId: '90207473903',
    projectId: 'flutterlistmarcel',
    authDomain: 'flutterlistmarcel.firebaseapp.com',
    storageBucket: 'flutterlistmarcel.appspot.com',
  );

}