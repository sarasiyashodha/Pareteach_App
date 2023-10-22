import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
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




}

