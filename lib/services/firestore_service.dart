import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/profile_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> updateUserProfile(UserProfile updatedUserProfile, String userName, String email, String password) async {
    try {
      await _firestore.collection('users')
          .doc(updatedUserProfile.userId)
          .update({
        'userName': updatedUserProfile.userName,
        'email': updatedUserProfile.email,
        // ... other fields you want to update
      });
      return true;
    } catch (e) {
      print('Error updating user profile: $e');
      throw e; // Rethrow the exception or handle it according to your application's error handling strategy

    }
  }
}
