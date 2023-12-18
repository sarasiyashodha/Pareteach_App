import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/quiz_marks.dart';

import 'package:mini_project_mobile_app/Components/nav_bar.dart';

class MarksOfQuizzes extends StatelessWidget {
  const MarksOfQuizzes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Marks of Quizzes"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: AssetImage("Images/parentProfile.jpg"),
            // ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Center( // Center the content horizontally and vertically
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              QuizMarks(name: "Quiz 1", marks: "90%",),
              QuizMarks(name: "Quiz 2", marks: "80%",),
              QuizMarks(name: "Quiz 3", marks: "60%",),
              QuizMarks(name: "Quiz 4", marks: "40%",),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
        ],
      ),
    );
  }
}
