import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/top_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';
import 'package:mini_project_mobile_app/Components/classwork_tile.dart';

class MarksOfQuizzesAndExams extends StatelessWidget {
  const MarksOfQuizzesAndExams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const TopBar(),
            const SizedBox(
              height: 40.0,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Marks of Quizzes and Exams',
                  style: ktitleTextStyle,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/eight');
              },
                child: ClassworkTile(title: "Quizzes", image: AssetImage('Images/quizzes.png'),),),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/nine');
              },
                child: ClassworkTile(title: "Exams", image: AssetImage('Images/exams.png'))),




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
