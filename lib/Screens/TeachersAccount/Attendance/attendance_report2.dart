import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';
import 'package:table_calendar/table_calendar.dart';


class AttendanceReport2 extends StatefulWidget {
  const AttendanceReport2({super.key});

  @override
  State<AttendanceReport2> createState() => _AttendanceReport2State();
}

class _AttendanceReport2State extends State<AttendanceReport2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Attendance"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            // ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            
            const SizedBox(
              height: 40.0,
            ),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2000, 01, 01),
              lastDay: DateTime.utc(2030, 12, 31),
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
