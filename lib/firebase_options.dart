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
    apiKey: 'AIzaSyCCIj_3SVGpc_Y5mprQ7w66lORpRD4kmAA',
    appId: '1:309644002856:web:0c00df66620f62267d971d',
    messagingSenderId: '309644002856',
    projectId: 'depo-bangunan-ced0b',
    authDomain: 'depo-bangunan-ced0b.firebaseapp.com',
    databaseURL: 'https://depo-bangunan-ced0b-default-rtdb.firebaseio.com',
    storageBucket: 'depo-bangunan-ced0b.appspot.com',
    measurementId: 'G-GQ3LH4LY6D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuyDoZgQyeeuxf7g5S1yfpkymfg_twlkQ',
    appId: '1:309644002856:android:3c4d961e7addde647d971d',
    messagingSenderId: '309644002856',
    projectId: 'depo-bangunan-ced0b',
    databaseURL: 'https://depo-bangunan-ced0b-default-rtdb.firebaseio.com',
    storageBucket: 'depo-bangunan-ced0b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvREOgvCEtPAcHhZjvZOZkSAwZCmaQ3A4',
    appId: '1:309644002856:ios:557b573e5b34c9107d971d',
    messagingSenderId: '309644002856',
    projectId: 'depo-bangunan-ced0b',
    databaseURL: 'https://depo-bangunan-ced0b-default-rtdb.firebaseio.com',
    storageBucket: 'depo-bangunan-ced0b.appspot.com',
    androidClientId: '309644002856-jaise2rc6or4k7fu2ek4joqdhe85v48k.apps.googleusercontent.com',
    iosClientId: '309644002856-16s7can193l21s7cd77uips4jui6473c.apps.googleusercontent.com',
    iosBundleId: 'com.depo.apps.depoAntrianDireksi',
  );

}