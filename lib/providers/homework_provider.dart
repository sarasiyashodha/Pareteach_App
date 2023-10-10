import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import '../Screens/TeachersAccount/Homework&Assignments/homework2.dart';

class HomeworkProvider with ChangeNotifier {
  List<String> _fileUrls = [];
  List<String> _fileNames = [];

  List<String> get fileUrls => _fileUrls;
  List<String> get fileNames => _fileNames;

  Future<void> uploadFiles(List<File> files) async {
    for (File file in files) {
      try {
        Reference storageReference = FirebaseStorage.instance.ref().child('homeworks/${DateTime.now().millisecondsSinceEpoch}_${file.path.split('/').last}');
        UploadTask uploadTask = storageReference.putFile(file);
        await uploadTask.whenComplete(() async {
          String downloadURL = await storageReference.getDownloadURL();
          String fileName = storageReference.name; // Get the file name
          _fileUrls.add(downloadURL);
          _fileNames.add(fileName);
          notifyListeners();
        });
      } catch (error) {
        // Handle upload errors here
        print('Error uploading file: $error');
        // You can implement retry logic or inform the user about the error
      }
    }
  }



}
