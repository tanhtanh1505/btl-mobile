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
    apiKey: 'AIzaSyCUU28QGopQLhU5NXpnVLv5AzKIMNxmPkk',
    appId: '1:465731525567:web:bc4e47e6bdf28e8b74df0a',
    messagingSenderId: '465731525567',
    projectId: 'jobsgo-3d607',
    authDomain: 'jobsgo-3d607.firebaseapp.com',
    storageBucket: 'jobsgo-3d607.appspot.com',
    measurementId: 'G-K9548NR2FS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCE6QDsrSyR-ikAAujel-ZnF6XqIx0TA8',
    appId: '1:465731525567:android:8b9b09d024c1ca7e74df0a',
    messagingSenderId: '465731525567',
    projectId: 'jobsgo-3d607',
    storageBucket: 'jobsgo-3d607.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQKJ8zAxbUxdeAVzXmnUK8mJ45p5urW7E',
    appId: '1:465731525567:ios:3af594f86c2703ec74df0a',
    messagingSenderId: '465731525567',
    projectId: 'jobsgo-3d607',
    storageBucket: 'jobsgo-3d607.appspot.com',
    androidClientId: '465731525567-hedbhk6cskdmugtntri9k1u0id0agff1.apps.googleusercontent.com',
    iosClientId: '465731525567-fubk3fbv194s3kv28np1qim5820d4bri.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQKJ8zAxbUxdeAVzXmnUK8mJ45p5urW7E',
    appId: '1:465731525567:ios:3af594f86c2703ec74df0a',
    messagingSenderId: '465731525567',
    projectId: 'jobsgo-3d607',
    storageBucket: 'jobsgo-3d607.appspot.com',
    androidClientId: '465731525567-hedbhk6cskdmugtntri9k1u0id0agff1.apps.googleusercontent.com',
    iosClientId: '465731525567-fubk3fbv194s3kv28np1qim5820d4bri.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );
}
