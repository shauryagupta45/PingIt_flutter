import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServive {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //Login

  //Register
  Future registerSUerWithEmailAndPassword(
      String fullName, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        //call our database service to update the user data

        return true; 
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  //SignOut

}
