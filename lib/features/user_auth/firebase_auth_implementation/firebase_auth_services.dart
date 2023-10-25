import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static String errorMessage = "";

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case "network-request-failed":
          errorMessage = "No internet connection. Please try again.";
          break;
        case "email-already-in-use":
          errorMessage = "Your email address has been used before.";
          break;
        case "invalid-email":
          errorMessage = "Your email address is not valid";
          break;
        case "weak-password":
          errorMessage = "Your password need at least 6 characters.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case "network-request-failed":
          errorMessage = "No internet connection. Please try again.";
          break;
        case "invalid-email":
          errorMessage = "Your email address isn't in correct format.";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        case "user-not-found":
          errorMessage = "User with this email doesn't exist.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        case "too-many-requests":
          errorMessage = "Too many requests. Try again later.";
          break;
        case "channel-error":
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
    }
    return null;
  }

}
