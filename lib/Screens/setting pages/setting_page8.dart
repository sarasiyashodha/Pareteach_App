import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';

import 'setting_page9.dart';


class SettingPage8 extends StatelessWidget {
  const SettingPage8({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Terms of use"),
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
          SizedBox(height: 20.0),
          
          Row(
            children: [
              Flexible(
                child: Text(
                  "Welcome to PareTeach! By using our app, you agree to comply with and be bound by the following terms and conditions. Please read these terms carefully before using the app. If you do not agree with these terms, please do not use the app.",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify, // Set text alignment to justify
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "Acceptance of Terms",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify, // Set text alignment to justify
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Flexible(
                child: Text(
                  "By using PareTeach, you acknowledge that you have read, understood, and agree to be bound by these terms of use. If you are using the app on behalf of an educational institution, you represent and warrant that you have the authority to bind the institution to these terms.",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify, // Set text alignment to justify
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "User Conduct",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Flexible(
                child: Text(
                  "You agree to use PareTeach for its intended purpose of facilitating communication and collaboration between parents and teachers. You shall not engage in any activity that disrupts or interferes with the app's functionality, security, or the experience of other users.",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify, 
                ),
              ),
            ],
          ),
          
          SizedBox(height: 30.0),
          Row(
            children: [

              GestureDetector(
                onTap: () {
                  // Navigate to Setting Page 9 when "Next" is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingPage9(),
                    ),
                  );
                },
                
              child:Text(
                "Next",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF305D62),
                ),
                textAlign: TextAlign.justify,
              ),
              ),
            ],
          ),
      
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
