import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/delete_button.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';

class SettingPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Delete Account"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 50),
            
            Text(
              "If you delete this account;",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
            
            const SizedBox(height: 10),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    
                    child: Text(
                      "• You will delete all the data from this account.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "• The connected social media accounts will be disconnected.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "• You will lose access to the app, their data, and any associated services.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "• This action cannot be reversed.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),

                  const SizedBox(height: 50),

                DeleteButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/fourty_five');
                  },
                ),




                ],
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

void main() {
  runApp(MaterialApp(
    home: SettingPage5(),
  ));
}
