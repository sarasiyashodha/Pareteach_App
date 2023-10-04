import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String? _userName;
  String? _userEmail;

  // Getters
  String? get userName => _userName;
  String? get userEmail => _userEmail;

  // Setters
  void setUserDetails(String name, String email) {
    _userName = name;
    _userEmail = email;
    notifyListeners();
  }


}

