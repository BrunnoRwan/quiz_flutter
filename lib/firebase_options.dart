// File generated by FlutLab.
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
          'DefaultFirebaseOptions have not been configured for iOS - '
          'try to add using FlutLab Firebase Configuration',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyAmhDrmTqt9xhfdjZJtzowoK1hgxfqiRGw',
      appId: '1:631398488314:android:f2b53d1eb429fb8f27d143',
      messagingSenderId: '631398488314',
      projectId: 'quiz-6665c',
      storageBucket: 'quiz-6665c.appspot.com');

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: 'AIzaSyAYfjnT4MRmdoLr0iJAqBQ330OOgSh7jDQ',
      authDomain: 'quiz-6665c.firebaseapp.com',
      projectId: 'quiz-6665c',
      storageBucket: 'quiz-6665c.appspot.com',
      messagingSenderId: '631398488314',
      appId: '1:631398488314:web:cadf0433daa00c6227d143');
}
