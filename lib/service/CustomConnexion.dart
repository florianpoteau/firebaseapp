import 'package:firebase_auth/firebase_auth.dart';

class CustomConnexion {
  static Future<String> createUser(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return "OK";
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }

  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  static Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return "OK";
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }
}
