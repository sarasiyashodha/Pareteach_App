import 'package:flutter/material.dart';
import '../../Components/top_bar.dart';
import '../../constants.dart';

class HomeworkAndAssignments extends StatelessWidget {
  const HomeworkAndAssignments({super.key});

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
                child: Text('Homework and Assignments',
                  style: ktitleTextStyle
                  ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/five');
              },
              child: Container(
                height: 210.0,
                width: 356.0,
                decoration: const BoxDecoration(
                  color: Color(0XFFA7C4BC),
                  borderRadius: BorderRadius.all(Radius.circular(10.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                          child: Text('Homework',
                            style: ksubTitleTextStyle,
                          ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Image(image: AssetImage('Images/homework.png'), height: 120.0, width: 120.0,),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/six');
              },
              child: Container(
                height: 210.0,
                width: 356.0,
                decoration: const BoxDecoration(
                  color: Color(0XFFA7C4BC),
                  borderRadius: BorderRadius.all(Radius.circular(10.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                          child: Text('Assignments',
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),

                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Image(image: AssetImage('Images/assignments.png'), height: 120.0, width: 120.0,),
                    ],
                  ),
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
        ],
      ),


    );
  }
}



