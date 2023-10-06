import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/change_button.dart';
import 'package:mini_project_mobile_app/Components/my_text-field.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';


class SettingPage3 extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final bool invisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Change Password"),
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
        padding: const EdgeInsets.all(0.0), 
        child: Column(
          children: [

            const SizedBox(height: 50),

            Container(
              width: 500,
              height: 45,
              child: MyTextField(
                controller: passwordController,
                hintText: 'Current Password',
                obscureText: true,
              ),
            ),

            const SizedBox(height: 30),

            Container(
              height: 45,
              child: MyTextField(
                controller: passwordController,
                hintText: 'New Password',
                obscureText: true,
              ),
            ),

            const SizedBox(height: 30),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "      Confirm New Password",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 45,
              child: MyTextField(
                controller: passwordController,
                hintText: 'New Password',
                obscureText: true,
              ),
            ),

            const SizedBox(height: 50),

            ChangeButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/thirty_six');
                  },
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
    home: SettingPage3(),
  ));
}
