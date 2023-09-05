import 'package:flutter/material.dart';
// import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

import '../../Components/nav_bar.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
//
//   DateTime selectedDay = DateTime.now();
//   late List <CleanCalendarEvent> selectedEvent;
//
//   final Map<DateTime,List<CleanCalendarEvent>> events = {
//     DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day):
//     [
//       CleanCalendarEvent('Event A',
//           startTime: DateTime(
//               DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
//           endTime:  DateTime(
//               DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
//           description: 'A special event',
//           color: Colors.blue),
//     ],
//
//     DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
//     [
//       CleanCalendarEvent('Event B',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day + 2, 10, 0),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day + 2, 12, 0),
//           color: Colors.orange),
//       CleanCalendarEvent('Event C',
//           startTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day + 2, 14, 30),
//           endTime: DateTime(DateTime.now().year, DateTime.now().month,
//               DateTime.now().day + 2, 17, 0),
//           color: Colors.pink),
//     ],
//   };
//
//   void _handleData(date){
//     setState(() {
//       selectedDay = date;
//       selectedEvent = events[selectedDay] ?? [];
//     });
//     print(selectedDay);
//   }
//   @override
//   void initState() {
//     selectedEvent = events[selectedDay] ?? [];
//     super.initState();
//   }
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Events"),
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [

            const SizedBox(
              height: 40.0,
            ),
            // Calendar(
            //   startOnMonday: true,
            //   selectedColor: Colors.blue,
            //   todayColor: Colors.red,
            //   eventColor: Colors.green,
            //   eventDoneColor: Colors.amber,
            //   bottomBarColor: Colors.deepOrange,
            //   onRangeSelected: (range) {
            //     print('selected Day ${range.from},${range.to}');
            //   },
            //   onDateSelected: (date){
            //     return _handleData(date);
            //   },
            //   events: events,
            //   isExpanded: true,
            //   dayOfWeekStyle: TextStyle(
            //     fontSize: 15,
            //     color: Colors.black12,
            //     fontWeight: FontWeight.w100,
            //   ),
            //   bottomBarTextStyle: TextStyle(
            //     color: Colors.white,
            //   ),
            //   hideBottomBar: false,
            //   hideArrows: false,
            //   weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
            // ),
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
