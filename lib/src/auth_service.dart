import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;

  AuthService(this._firebaseAuth);
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signIn({required String email, required String password}) async {
    try {

      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return ("Signed in !");

    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  Future<String> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return ("Signed up");
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

}