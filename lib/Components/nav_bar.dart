import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/services/auth.dart';
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
              image: DecorationImage(
                image: AssetImage('Images/drawerImage.jpg'), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text(userProvider.userName ?? "", style: TextStyle(fontSize: 25), ),
            accountEmail: Text(userProvider.userEmail ?? "", style: TextStyle(fontSize: 25),),
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: userProvider.profileImageUrl != null
            //       ? NetworkImage(userProvider.profileImageUrl!)
            //       : null,
            //   radius: 25.0,
            // ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, '/eight');
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_back_sharp),
            title: Text("Logout"),
            onTap: () async {
              await _auth.signOut();
              Navigator.pushNamed(context, '/three');
            },
          ),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {
              String? userRole = Provider.of<UserProvider>(context, listen: false).userRole;
              if (userRole == 'Teacher') {
                Navigator.pushNamed(context, '/twenty_three');
              } else if (userRole == 'Parent') {
                Navigator.pushNamed(context, '/twenty');
              } else {
                // Handle other roles or scenarios as needed
              }
            },
          ),

          ListTile(
            leading: Icon(Icons.border_color_outlined),
            title: Text("Homework and Assignments"),
            onTap: () {
              String? userRole = Provider.of<UserProvider>(context, listen: false).userRole;
              if (userRole == 'Teacher') {
                Navigator.pushNamed(context, '/twenty_four');
              } else if (userRole == 'Parent') {
                Navigator.pushNamed(context, '/nine');
              } else {
                // Handle other roles or scenarios as needed
              }
            },
          ),

          ListTile(
            leading: Icon(Icons.bookmark_added),
            title: Text("Marks of Quizzes and Exams"),
            onTap: () {
              String? userRole = Provider.of<UserProvider>(context, listen: false).userRole;
              if (userRole == 'Teacher') {
                Navigator.pushNamed(context, '/twenty_seven');
              } else if (userRole == 'Parent') {
                Navigator.pushNamed(context, '/twelve');
              } else {
                // Handle other roles or scenarios as needed
              }
            },
          ),

          ListTile(
            leading: Icon(Icons.call),
            title: Text("Calls"),
            onTap: () {
              Navigator.pushNamed(context, '/forty_three');
            },
          ),

          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: Text("Updates"),
            onTap: () {
              Navigator.pushNamed(context, '/fifteen');
            },
          ),

          ListTile(
            leading: Icon(Icons.check_circle_sharp),
            title: Text("Attendance"),
            onTap: () {
              String? userRole = Provider.of<UserProvider>(context, listen: false).userRole;
              if (userRole == 'Teacher') {
                Navigator.pushNamed(context, '/thirty_one');
              } else if (userRole == 'Parent') {
                Navigator.pushNamed(context, '/thirty');
              } else {
                // Handle other roles or scenarios as needed
              }
            },
          ),

          ListTile(
            leading: Icon(Icons.star),
            title: Text("Recommendations"),
            onTap: () {
              String? userRole = Provider.of<UserProvider>(context, listen: false).userRole;
              if (userRole == 'Teacher') {
                Navigator.pushNamed(context, '/thirty_two');
              } else if (userRole == 'Parent') {
                Navigator.pushNamed(context, '/twenty_one');
              } else {
                // Handle other roles or scenarios as needed
              }
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.pushNamed(context, '/thirty_three');
            },
          ),

          
        ],
      ),
    );
  }
}