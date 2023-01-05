// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ping_it_chat/service/database_service.dart';

class AuthServive {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //Login

  //Register
  Future registerUserWithEmailAndPassword(
      String fullName, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        //call our database service to update the user data

        await DatabaseService(uid: user.uid).updateUserData(fullName, email); 
        return true;
      }
    } on FirebaseAuthException catch (e) {
      print(e);
      return e.message ;  
    }
  }

  //SignOut

}
