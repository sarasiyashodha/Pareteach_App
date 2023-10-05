import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String? _userName;
  String? _userEmail;
  String _userRole = '';

  // Getters
  String? get userName => _userName;
  String? get userEmail => _userEmail;
  String? get userRole => _userRole;

  // Setters
  void setUserDetails(String name, String email, String userRole) {
    _userName = name;
    _userEmail = email;
    _userRole = userRole;
    notifyListeners();
  }


}

