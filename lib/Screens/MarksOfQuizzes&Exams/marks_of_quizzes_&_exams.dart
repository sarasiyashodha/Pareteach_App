import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/classwork_tile.dart';

import '../../Components/nav_bar1.dart';

class MarksOfQuizzesAndExams extends StatelessWidget {
  const MarksOfQuizzesAndExams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Marks of Quizzes and Exams"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/parentProfile.jpg"),
            ),
          ),
        ],
      ),
      body: Center( // Center the content horizontally
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/eight');
                },
                child: ClassworkTile(
                  title: "Quizzes",
                  image: AssetImage('Images/quizzes.png'),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/nine');
                },
                child: ClassworkTile(
                  title: "Exams",
                  image: AssetImage('Images/exams.png'),
                ),
              ),
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
    );
  }
}
