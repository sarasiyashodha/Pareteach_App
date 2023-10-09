import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class HomeworkProvider with ChangeNotifier {
  List<String> _fileUrls = [];

  List<String> get fileUrls => _fileUrls;

  Future<void> uploadFiles(List<File> files) async {
    for (File file in files) {
      try {
        Reference storageReference = FirebaseStorage.instance.ref().child('homeworks/${DateTime.now().millisecondsSinceEpoch}_${file.path.split('/').last}');
        UploadTask uploadTask = storageReference.putFile(file);
        await uploadTask.whenComplete(() async {
          String downloadURL = await storageReference.getDownloadURL();
          _fileUrls.add(downloadURL);
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
