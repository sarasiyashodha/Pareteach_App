import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/updates_tile.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';


class Updates2 extends StatelessWidget {
  const Updates2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Updates"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/thirty_five');
                },
                child: UpdatesTile(title: "Events", image: AssetImage('Images/events.png')),
              ),
              SizedBox(
                height: 12.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/thirty_seven');
                },
                child: UpdatesTile(title: "Holidays", image: AssetImage('Images/holidays.png')),
              ),
              SizedBox(
                height: 12.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/thirty_six');
                },
                child: UpdatesTile(title: "Extra classes", image: AssetImage('Images/extra_classes.png')),
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