import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/setting%20pages/setting_page10.dart';

class SettingPage9 extends StatelessWidget {
  const SettingPage9({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Terms of use"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "Privacy and Data Usage",
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
                  "We respect your privacy and are committed to protecting your personal information. Our Privacy Policy outlines how we collect, use, and safeguard your data. By using the app, you consent to the practices described in our Privacy Policy.",
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
                "Content Guidelines",
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
                  "You agree not to post, transmit, or share any content that is unlawful, defamatory, infringing, abusive, or harmful. You are responsible for the accuracy and legality of the content you share through the app.",
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
                "Termination",
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
                  "We reserve the right to terminate or suspend your account and access to the app at our discretion, without prior notice, if we believe that you have violated these terms or engaged in unauthorized or inappropriate use of the app.",
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
                      builder: (context) => SettingPage10(),
                    ),
                  );
                },
                child: Text(
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
