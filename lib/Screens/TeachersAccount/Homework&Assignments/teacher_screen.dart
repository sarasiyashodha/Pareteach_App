import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/homework2.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../models/homework_model.dart';
import '../../../providers/homework_provider.dart';

class TeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text('Homeworks'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            ),
          ),
        ],
      ),
      body: Consumer<HomeworkProvider>(
        builder: (context, provider, child) {
          if (provider.homeworks.isEmpty) {
            return Center(child: Text('No homework available.'));
          } else {
            return ListView.separated(
              itemCount: provider.homeworks.length,
              itemBuilder: (context, index) {
                Homework homework = provider.homeworks[index];
                return ListTile(
                  title: Text('Title: ${homework.title}', style: ksubTitleTextStyle),
                  subtitle: Text('Description: ${homework.description}', style: knormalTextStyle,),
                  trailing: Text('Due Date: ${homework.dueDate.toString()}'),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 4,
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF305D62),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Homework2(),
            ),
          );
          // Add functionality for the button here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


