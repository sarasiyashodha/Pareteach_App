import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/models/UserModel.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';

class AuthServices {
  //firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //create a user from firebase user with uid
  UserModel? _userWithFirebaseUserUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //create the stream for checking the auth changes in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUserUid);
  }

  //sign in anonymous
  Future signInAnonymously(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      String uid = userCredential.user!.uid;
      print('Signed in with UID: $uid');
      Provider.of<UserProvider>(context, listen: false).setUserDetails("Anonymous", "anonymous@example.com");
      Navigator.pushNamed(context, '/twenty_five');
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  //register using email and password
  Future registerWithEmailAndPassword(
      {required BuildContext context, required String username, required String email, required String password}) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      Provider.of<UserProvider>(context, listen: false).setUserDetails(username, email);
      Navigator.pushNamed(context, '/twenty_five');
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'username': username,
          'email': email,
          // add other fields as needed
        });
      }

      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        print('The email address is already in use by another account.');
      } else {
        print('Error: ${e.message}');
      }
      return null;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  //signin using userId and password
  Future signInUsingEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirebaseUserUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  //sign in using gmail
  //signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}
