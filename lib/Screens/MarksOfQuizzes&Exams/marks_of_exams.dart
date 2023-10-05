import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/grade.dart';
import 'package:mini_project_mobile_app/Components/term_test_marks.dart';

import '../../Components/nav_bar1.dart';

class MarksOfExams extends StatefulWidget {
  const MarksOfExams({super.key});

  @override
  State<MarksOfExams> createState() => _MarksOfExamsState();
}

class _MarksOfExamsState extends State<MarksOfExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Marks of Exams"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/parentProfile.jpg"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: SizedBox(
                height: 530.0,
                width: 356.0,
                child: PageView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3.0),
                        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                        color: const Color(0XFFA7C4BC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Grade(grade: "Grade 7",),
                            SizedBox(
                              height: 10.0,
                            ),
                            TermTestMarks(term: "First term",),
                            TermTestMarks(term: "Second term",),
                            TermTestMarks(term: "Third term",),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
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


