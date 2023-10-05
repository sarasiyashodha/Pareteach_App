import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/services/auth.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthServices _auth = AuthServices();
    var userProvider = Provider.of<UserProvider>(context, listen: true);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0XFF305D62),
            ),
            accountName: Text(userProvider.userName ?? ""),
            accountEmail: Text(userProvider.userEmail ?? ""),
            currentAccountPicture: CircleAvatar(
              backgroundImage: userProvider.userRole == 'Teacher'
                  ? AssetImage('Images/TeachersProfile.jpeg')
                  : AssetImage('Images/parentProfile.jpg'),
              radius: 25.0,
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, '/twenty_six');
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_back_sharp),
            title: Text("Logout"),
            onTap: () async {
              await _auth.signOut();
              Navigator.pushNamed(context, '/twenty_four');
            },
          ),


          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {
              Navigator.pushNamed(context, '/twenty_five');
            },
          ),

          ListTile(
            leading: Icon(Icons.border_color_outlined),
            title: Text("Homework and Assignments"),
            onTap: () {
              Navigator.pushNamed(context, '/twenty_seven');
            },
          ),

          ListTile(
            leading: Icon(Icons.bookmark_added),
            title: Text("Marks of Quizzes and Exams"),
            onTap: () {
              Navigator.pushNamed(context, '/thirty');
            },
          ),

          ListTile(
            leading: Icon(Icons.stacked_line_chart_sharp),
            title: Text("Progress"),
            onTap: () {
              Navigator.pushNamed(context, '/thirty_three');
            },
          ),

          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: Text("Updates"),
            onTap: () {
              Navigator.pushNamed(context, '/thirty_four');
            },
          ),

          ListTile(
            leading: Icon(Icons.check_circle_sharp),
            title: Text("Attendance"),
            onTap: () {
              Navigator.pushNamed(context, '/thirty_eight');
            },
          ),

          ListTile(
            leading: Icon(Icons.star),
            title: Text("Recommendations"),
            onTap: () {
              Navigator.pushNamed(context, '/thirty_nine');
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.pushNamed(context, '/fourty');
            },
          ),

          
        ],
      ),
    );
  }
}