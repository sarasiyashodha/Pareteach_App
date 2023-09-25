import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0XFF305D62),),
              accountName: Text("Mary Jones"),
              accountEmail: Text("maryjones@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('Images/parentProfile.jpg',),
                radius: 25.0,
            ),
          ),

           ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, '/three'); // Navigate to '/three'
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_back_sharp),
            title: Text("Logout"),
            onTap: () => print('hello'),
          ),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {
              Navigator.pushNamed(context, '/nineteen'); // Navigate to '/three'
            },
          ),
          
          ListTile(
            leading: Icon(Icons.border_color_outlined),
            title: Text("Homework and Assignments"),
            onTap: () {
              Navigator.pushNamed(context, '/four');
            },
          ),

          ListTile(
            leading: Icon(Icons.bookmark_added),
            title: Text("Marks of Quizzes and Exams"),
            onTap: () {
              Navigator.pushNamed(context, '/seven');
            },
          ),

          ListTile(
            leading: Icon(Icons.stacked_line_chart_sharp),
            title: Text("Progress"),
            onTap: (){
              Navigator.pushNamed(context, '/twenty_one');
            },
          ),

          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: Text("Updates"),
            onTap: () {
              Navigator.pushNamed(context, '/ten');
            },
          ),

          ListTile(
            leading: Icon(Icons.check_circle_sharp),
            title: Text("Attendance"),
            onTap: () {
              Navigator.pushNamed(context, '/fourteen');
            },
          ),

          ListTile(
            leading: Icon(Icons.star),
            title: Text("Recommendations"),
            onTap: () {
              Navigator.pushNamed(context, '/twenty');
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => print('hello'),
          ),


          
          
        ],
      ),
    );
  }
}
