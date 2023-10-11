import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:mini_project_mobile_app/models/homework_model.dart';

class HomeworkProvider with ChangeNotifier {
  List<String> _fileUrls = [];
  List<String> _fileNames = [];
  List<Homework> _homeworks = [];

  List<String> get fileUrls => _fileUrls;
  List<String> get fileNames => _fileNames;
  List<Homework> get homeworks => _homeworks;

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

  HomeworkProvider() {
    // Initialize Firebase Firestore and listen to changes in the 'homeworks' collection
    FirebaseFirestore.instance.collection('homeworks').snapshots().listen((snapshot) {
      _homeworks = snapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return Homework(
          title: data['title'] ?? '',
          description: data['description'] ?? '',
          dueDate: (data['dueDate'] as Timestamp).toDate(),
          fileNames: List<String>.from(data['fileNames'] ?? []),
          fileUrls: List<String>.from(data['fileUrls'] ?? []),
        );
      }).toList();
      notifyListeners();
    });
  }

  Future<void> uploadHomework(Homework homework) async {
    try {
      await FirebaseFirestore.instance.collection('homeworks').add({
        'title': homework.title,
        'description': homework.description,
        'dueDate': homework.dueDate,
        'fileNames': homework.fileNames,
        'fileUrls': homework.fileUrls,
        // Add other homework details as needed
      });
    } catch (error) {
      // Handle errors (e.g., show an error message to the user)
      print('Error uploading homework: $error');
    }
  }

  Future<List<Homework>> getHomeworks() async {
    // Perform a query to fetch homeworks from Firestore
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('homeworks').get();

    // Extract data from the querySnapshot and convert it into a List<Homework>
    List<Homework> homeworks = querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return Homework(
        title: data['title'] ?? '',
        description: data['description'] ?? '',
        dueDate: (data['dueDate'] as Timestamp).toDate(),
        fileNames: List<String>.from(data['fileNames']),
        fileUrls: List<String>.from(data['fileUrls']),
      );
    }).toList();

    return homeworks;
  }



}
