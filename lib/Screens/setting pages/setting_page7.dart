import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';

class SettingPage7 extends StatelessWidget {
  const SettingPage7({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Themes"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            // ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 50.0),
          Row(
            children: [
              Image.asset(
                "Images/light.png",
                width: 40.0,
                height: 40.0,
              ),
              SizedBox(width: 8.0),
              Text(
                "Light",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 50.0),

          Row(
            children: [
              Image.asset(
                "Images/dark.png",
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(width: 8.0),
              Text(
                "Dark",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined), label: "Academics"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
    );
  }
}
