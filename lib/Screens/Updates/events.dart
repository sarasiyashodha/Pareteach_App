import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/top_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
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
            child: Text('Events',
              style: ktitleTextStyle,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2000, 01, 01),
              lastDay: DateTime.utc(2030, 12, 31),),

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
