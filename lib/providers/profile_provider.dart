import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/profile_model.dart';

class UserProfileProvider extends ChangeNotifier {
  UserProfile? _userProfile;

  UserProfile? get userProfile => _userProfile;

  void updateUserProfile(UserProfile userProfile) {
    _userProfile = userProfile;
    notifyListeners();
  }

}
