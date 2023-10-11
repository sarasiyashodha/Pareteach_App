import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../models/homework_model.dart';
import '../../../providers/homework_provider.dart';

class ParentScreen extends StatelessWidget {
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
              backgroundImage: AssetImage("Images/parentProfile.jpg"),
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
                  title: Text('Title: ${homework.title}', style: knormalTextStyle),
                  subtitle: Text('Description: ${homework.description}', style: knormalTextStyle),
                  trailing: Text('Due Date: ${homework.dueDate.toString()}', style: knormalTextStyle),
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
    );
  }
}


