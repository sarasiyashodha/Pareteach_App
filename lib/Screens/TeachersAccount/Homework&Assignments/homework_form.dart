import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

import '../../../providers/homework_provider.dart';

import 'package:mini_project_mobile_app/models/homework_model.dart';

class HomeworkForm extends StatefulWidget {
  @override
  _HomeworkFormState createState() => _HomeworkFormState();
}

class _HomeworkFormState extends State<HomeworkForm> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;
  late DateTime _dueDate = DateTime.now();
  String _formattedDueDate = '';

  Future<void> _pickFiles(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx', 'jpg', 'png'],
    );

    if (result != null) {
      List<File> pickedFiles = result.paths?.map((path) => File(path!)).toList() ?? [];
      HomeworkProvider homeworkProvider = Provider.of<HomeworkProvider>(context, listen: false);
      try {
        await homeworkProvider.uploadFiles(pickedFiles);
        // Show a success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Homework uploaded successfully')));
      } catch (error) {
        // Handle upload errors
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error uploading homework: $error')));
      }
    }
  }

  Future<void> _selectDueDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickedDate != null && pickedDate != _dueDate) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        DateTime combinedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          _dueDate = combinedDateTime;
          // Format the due date and update the _formattedDueDate string
          _formattedDueDate = DateFormat('MMM d, yyyy - hh:mm a').format(_dueDate);
        });
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Title',
              labelStyle: TextStyle(color: Color(0xFF305D62),), // Change label text color
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF305D62),), // Change border color when focused
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), // Change border color when not focused
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }
              return null;
            },
            onSaved: (value) => _title = value!,
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: TextStyle(color: Color(0xFF305D62),), // Change label text color
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF305D62),), // Change border color when focused
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), // Change border color when not focused
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a description';
              }
              return null;
            },
            onSaved: (value) => _description = value!,
          ),
          SizedBox(height: 20,),
          TextFormField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: 'Due Date',
              labelStyle: TextStyle(color: Color(0xFF305D62),), // Change label text color
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF305D62),), // Change border color when focused
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), // Change border color when not focused
              ),
            ),
            // Show the formatted due date in a Text widget
            controller: TextEditingController(text: _formattedDueDate),
            onTap: () {
              _selectDueDate(context);
            },
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF305D62), // Background color
            ),
            onPressed: () async{
              // Pick files before uploading
              await _pickFiles(context);
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Create a Homework object with the entered data
                Homework homework = Homework(title: _title, description: _description, dueDate: _dueDate, fileNames: [], fileUrls: []);

                // Upload the homework to Firestore
                Provider.of<HomeworkProvider>(context, listen: false).uploadHomework(homework);
              }
            },
            child: Text('Upload Homework'),
          ),
          SizedBox(height: 20.0,),
          for (int i = 0; i < Provider.of<HomeworkProvider>(context).fileNames.length; i++)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black38, // Background color
              ),
              onPressed: () {
                launchUrl(Provider.of<HomeworkProvider>(context).fileUrls[i] as Uri);
              },
              child: Text('${Provider.of<HomeworkProvider>(context).fileNames[i]}'),
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
