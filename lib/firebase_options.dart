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
    apiKey: 'AIzaSyCEC2z-UjnwgVaBff2iG6Lpk6DFaJfEILw',
    appId: '1:541319243298:web:ae12ff65b3d698c18b8c7b',
    messagingSenderId: '541319243298',
    projectId: 'pet-care-85209',
    authDomain: 'pet-care-85209.firebaseapp.com',
    storageBucket: 'pet-care-85209.appspot.com',
    measurementId: 'G-WEGM96W3ME',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvDhc4XoMfFOhgzprP9pQGLtpHz8mOmew',
    appId: '1:541319243298:android:bd189e3516ef4d7f8b8c7b',
    messagingSenderId: '541319243298',
    projectId: 'pet-care-85209',
    storageBucket: 'pet-care-85209.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxtBnZpHoVQXRwP4d0WHUG9yeA5f-PMcU',
    appId: '1:541319243298:ios:3046d054b28c5b148b8c7b',
    messagingSenderId: '541319243298',
    projectId: 'pet-care-85209',
    storageBucket: 'pet-care-85209.appspot.com',
    androidClientId: '541319243298-okc31usl5jchgpek36ps9p9dpnsiurba.apps.googleusercontent.com',
    iosClientId: '541319243298-redu97iseoumc8f3ggnalk7cb45rr9r7.apps.googleusercontent.com',
    iosBundleId: 'com.example.petCare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxtBnZpHoVQXRwP4d0WHUG9yeA5f-PMcU',
    appId: '1:541319243298:ios:3046d054b28c5b148b8c7b',
    messagingSenderId: '541319243298',
    projectId: 'pet-care-85209',
    storageBucket: 'pet-care-85209.appspot.com',
    androidClientId: '541319243298-okc31usl5jchgpek36ps9p9dpnsiurba.apps.googleusercontent.com',
    iosClientId: '541319243298-redu97iseoumc8f3ggnalk7cb45rr9r7.apps.googleusercontent.com',
    iosBundleId: 'com.example.petCare',
  );
}
