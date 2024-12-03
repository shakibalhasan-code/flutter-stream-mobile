import 'package:firebase_core/firebase_core.dart';

const firebaseServiceKey = "assets/firebase_private_key.json";

FirebaseOptions firebase_config() {
  return const FirebaseOptions(
      apiKey: "AIzaSyCbaMHKtZ9cUv6lJsfmjR4cKxzTRisFcbc",
      authDomain: "flutter-stream-softs.firebaseapp.com",
      projectId: "flutter-stream-softs",
      storageBucket: "flutter-stream-softs.firebasestorage.app",
      messagingSenderId: "740062630703",
      appId: "1:740062630703:web:b55ff0dd658c4d432387da",
      measurementId: "G-C7N7JQ6KYT");
}
