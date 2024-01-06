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
    apiKey: 'AIzaSyDVvOiIAnccxIwbngMSdctV1m-Ewvepyco',
    appId: '1:777664139411:web:fd1c299120a4bacfeffd66',
    messagingSenderId: '777664139411',
    projectId: 'usmfoodsaver-c0a12',
    authDomain: 'usmfoodsaver-c0a12.firebaseapp.com',
    databaseURL: 'https://usmfoodsaver-c0a12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'usmfoodsaver-c0a12.appspot.com',
    measurementId: 'G-C30KD1JCCW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzflsSnH60bEmBW1ExvrIMT0I11MSsJOc',
    appId: '1:777664139411:android:f8e2f28d8a0b754deffd66',
    messagingSenderId: '777664139411',
    projectId: 'usmfoodsaver-c0a12',
    databaseURL: 'https://usmfoodsaver-c0a12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'usmfoodsaver-c0a12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_Zy9yo9-sC1a9R7OKFm6PiqU9AOgazh4',
    appId: '1:777664139411:ios:92632aa97e466a87effd66',
    messagingSenderId: '777664139411',
    projectId: 'usmfoodsaver-c0a12',
    databaseURL: 'https://usmfoodsaver-c0a12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'usmfoodsaver-c0a12.appspot.com',
    iosBundleId: 'com.example.usmfoodsaver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_Zy9yo9-sC1a9R7OKFm6PiqU9AOgazh4',
    appId: '1:777664139411:ios:dbb2e764252a1635effd66',
    messagingSenderId: '777664139411',
    projectId: 'usmfoodsaver-c0a12',
    databaseURL: 'https://usmfoodsaver-c0a12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'usmfoodsaver-c0a12.appspot.com',
    iosBundleId: 'com.example.usmfoodsaver.RunnerTests',
  );
}
