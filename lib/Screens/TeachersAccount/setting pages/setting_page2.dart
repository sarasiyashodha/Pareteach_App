import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';
import 'setting_page3.dart';
import 'setting_page5.dart';

class SettingPage2 extends StatelessWidget {
  const SettingPage2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Privacy and Security"),
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

          Text(
                "Change password",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),

              SizedBox(height: 20.0),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingPage3(), 
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  "Images/ChangePassword.png",
                  width: 30.0,
                  height: 30.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 35.0),

          Row(
            children: [
              Text(
                "Delete Account",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingPage5(), 
                ),
              );
            },

          child:Row(
            children: [
              Image.asset(
                "Images/DeleteAccount.png",
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(width: 8.0),
              Text(
                "Delete Account",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
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
