import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';
import 'package:mini_project_mobile_app/Components/notification_tile.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Notifications"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: AssetImage("Images/parentProfile.jpg"),
            // ),
          ),
        ],
      ),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 30.0,),
            NotificationBox(),
            // NotificationBox(),
            // NotificationBox(),
          ],
        ),
      ),
    );
  }
}



