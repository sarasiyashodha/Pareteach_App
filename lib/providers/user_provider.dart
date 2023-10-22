import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/profile_model.dart';

class UserProvider with ChangeNotifier {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String? _userId;
  String? _userName;
  String? _userEmail;
  String? _password;
  String _userRole = '';

  // Getters
  String? get userId => _userId;
  String? get userName => _userName;
  String? get userEmail => _userEmail;
  String? get password => _password;
  String? get userRole => _userRole;



  // Setters
  void setUserDetails(String userId, String name, String email, String userRole, String password) {
    _userId = userId;
    _userName = name;
    _userEmail = email;
    _password = password;
    _userRole = userRole;
    notifyListeners();
  }

  Future<bool> updateUserProfile(UserProfile updatedUserProfile) async {
    try {
      await _firestore.collection('users').doc(updatedUserProfile.userId).update({
        'userID': updatedUserProfile.userId,
        'userName': updatedUserProfile.userName,
        'email': updatedUserProfile.email,
        // ... other fields you want to update
      });
      return true;
    } catch (e) {
      print('Error updating user profile: $e');
      return false;
      throw e;// Rethrow the exception or handle it according to your application's error handling strategy

    }
  }





}

