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
    apiKey: 'AIzaSyBE7UJx1vMpLtqqNcHmTh0ydbIbreTnbps',
    appId: '1:869343011943:web:56b2d4f1fdfb433e32e0c2',
    messagingSenderId: '869343011943',
    projectId: 'mini-project-mobile-app-b4724',
    authDomain: 'mini-project-mobile-app-b4724.firebaseapp.com',
    storageBucket: 'mini-project-mobile-app-b4724.appspot.com',
    measurementId: 'G-2DRS9CS64Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjZo5SK5VDxloKPCilZaKS6bsKMG-XR4o',
    appId: '1:869343011943:android:eb0d8d36cf8fb76932e0c2',
    messagingSenderId: '869343011943',
    projectId: 'mini-project-mobile-app-b4724',
    storageBucket: 'mini-project-mobile-app-b4724.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBR4LuaHKDeSEcYq7UIz-gLz7-AyDkQewQ',
    appId: '1:869343011943:ios:4fd17644d82bd47c32e0c2',
    messagingSenderId: '869343011943',
    projectId: 'mini-project-mobile-app-b4724',
    storageBucket: 'mini-project-mobile-app-b4724.appspot.com',
    iosBundleId: 'com.example.miniProjectMobileApp',
  );
}