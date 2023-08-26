import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/top_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';
import 'package:mini_project_mobile_app/Components/quiz_marks.dart';

class MarksOfQuizzes extends StatelessWidget {
  const MarksOfQuizzes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
            TopBar(),
            SizedBox(
              height: 40.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Marks of Quizzes',
                style: ktitleTextStyle,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            QuizMarks(name: "Quiz 1", marks: "90%",),
            QuizMarks(name: "Quiz 2", marks: "80%",),
            QuizMarks(name: "Quiz 3", marks: "60%",),
            QuizMarks(name: "Quiz 4", marks: "40%",),

          ],
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


