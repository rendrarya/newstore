import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:newstore/services/auth_response.dart';

class AuthenticationService {
  static const String emptyMsg = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static Future intializeService() async {
    if (kIsWeb) {
      await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCfnl8PvWDDyYSd9_9jdFFkX3WEbORY9Yo",
              authDomain: "newtoko-69d45.firebaseapp.com",
              projectId: "newtoko-69d45",
              storageBucket: "newtoko-69d45.appspot.com",
              messagingSenderId: "20157859945",
              appId: "1:20157859945:web:531ae119c0355be66a3af8"));
    } else {
      await Firebase.initializeApp();
    }
  }

  Future<AuthResponse> signUpWithEmail(
      {required String name,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      await userCredential.user!.updateDisplayName(name);
      return AuthResponse(AuthStatus.success, emptyMsg);
    } on FirebaseAuthException catch (e) {
      return AuthResponse(AuthStatus.error, generateErrorMessage(e.code));
    }
  }

  Future<AuthResponse> signInWithEmail(
      {required String email,
      required String password,
      required String name}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);

      return AuthResponse(AuthStatus.success, emptyMsg);
    } on FirebaseAuthException catch (e) {
      return AuthResponse(AuthStatus.error, generateErrorMessage(e.code));
    }
  }

  Future<AuthResponse> resetPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(
        email: email,
      );

      return AuthResponse(AuthStatus.success, emptyMsg);
    } on FirebaseAuthException catch (e) {
      return AuthResponse(AuthStatus.error, generateErrorMessage(e.code));
    }
  }

  Future signOut() async {
    await _auth.signOut();
  }

  String? getUserName() {
    return _auth.currentUser!.displayName;
  }

  String generateErrorMessage(errorCode) {
    String errorMessage;
    switch (errorCode) {
      case "invalid-email":
        errorMessage = "Your email address appears to be malformed";
        break;
      case "Weak Password":
        errorMessage = "Your Password Too Weak";
        break;
      case "user-not-found":
        errorMessage = "Account Does not Exist";
        break;
      default:
        errorMessage = "Unexpected Error Occured";
    }
    return errorMessage;
  }
}
