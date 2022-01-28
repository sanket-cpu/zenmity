import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<bool> signin(String email, String password) async {
  try {
    await auth.signInWithEmailAndPassword(email: email, password: password);
    Fluttertoast.showToast(
        msg: "Sign in Successful!", toastLength: Toast.LENGTH_LONG);

    return true;
  } on FirebaseAuthException {
    Fluttertoast.showToast(
        msg: "Sign in Unsuccessful", toastLength: Toast.LENGTH_LONG);
    return false;
  }
}

Future<bool> register(String email, String password) async {
  try {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    Fluttertoast.showToast(
        msg: "Registaration successful", toastLength: Toast.LENGTH_LONG);

    return true;
  } catch (e) {
    Fluttertoast.showToast(
        msg: "Registration Unsuccessful", toastLength: Toast.LENGTH_LONG);
    return false;
  }
}
