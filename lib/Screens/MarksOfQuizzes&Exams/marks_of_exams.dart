import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/top_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';
import 'package:mini_project_mobile_app/Components/term_test_marks.dart';

class MarksOfExams extends StatefulWidget {
  const MarksOfExams({super.key});

  @override
  State<MarksOfExams> createState() => _MarksOfExamsState();
}

class _MarksOfExamsState extends State<MarksOfExams> {
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
              child: Text('Marks of Exams',
                style: ktitleTextStyle,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: 530.0,
              width: 356.0,
              child: PageView.builder(
                itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3.0,),
                        borderRadius: const BorderRadius.all(Radius.circular(15.0),),
                        color: const Color(0XFFA7C4BC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Align(
                                child: Text("Grade 7", style: ksubTitleTextStyle,),
                              alignment: Alignment.topLeft,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TermTestMarks(),
                            TermTestMarks(),
                            TermTestMarks(),

                          ],
                        ),
                      ),
                    );

              },
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
        ],
      ),
    );
  }
}


