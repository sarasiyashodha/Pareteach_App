import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Homework {
  String title;
  String description;
  DateTime dueDate;

  Homework({required this.title, required this.description, required this.dueDate});
}

class HomeworkForm extends StatefulWidget {
  @override
  _HomeworkFormState createState() => _HomeworkFormState();
}

class _HomeworkFormState extends State<HomeworkForm> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;
  late DateTime _dueDate;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Title'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }
              return null;
            },
            onSaved: (value) => _title = value!,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Description'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a description';
              }
              return null;
            },
            onSaved: (value) => _description = value!,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Create a Homework object with the entered data
                Homework homework = Homework(title: _title, description: _description, dueDate: _dueDate);

                // Upload the homework to Firestore
                uploadHomework(homework);
              }
            },
            child: Text('Upload Homework'),
          ),
        ],
      ),
    );
  }

  Future<void> uploadHomework(Homework homework) async {
    try {
      // Upload the homework to Firestore
      await FirebaseFirestore.instance.collection('homeworks').add({
        'title': homework.title,
        'description': homework.description,
        'dueDate': homework.dueDate,
        // Add other homework details as needed
      });
      // Show a success message to the user
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Homework uploaded successfully')));
    } catch (error) {
      // Handle errors (e.g., show an error message to the user)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error uploading homework: $error')));
    }
  }
}
