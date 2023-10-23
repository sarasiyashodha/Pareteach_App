import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

class FileImagePicker {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  ImagePicker picker = ImagePicker();

  Future<String> uploadImageToFirebaseStorage(File image, String userId) async {
    try {
      Reference storageReference = _storage.ref().child('profile_images/$userId');
      UploadTask uploadTask = storageReference.putFile(image);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadURL = await taskSnapshot.ref.getDownloadURL();
      return downloadURL;



    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

  Future<void> saveImageUrlToFirestore(String imageUrl, String userId) async {
    try {
      await _firestore.collection('profile_images').doc(userId).set({
        'imageUrl': imageUrl,
      });
    } catch (e) {
      print('Error saving image URL to Firestore: $e');
    }
  }

  Future<File?> pickImage() async{
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if(image != null) {
      Logger().f(image.path);
      return File(image.path);
    }else{
      Logger().e("Try again");
      return null;
    }
  }
}