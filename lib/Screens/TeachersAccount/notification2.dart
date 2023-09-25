import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';

class Notifications2 extends StatefulWidget {
  const Notifications2({Key? key}) : super(key: key);

  @override
  _Notifications2State createState() => _Notifications2State();
}

class _Notifications2State extends State<Notifications2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Notifications"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NotificationBox2(),
            NotificationBox2(),
            NotificationBox2(),
          ],
        ),
      ),
    );
  }
}

class NotificationBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Color(0xFFDFEEEB),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Text(
          "Notification",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Notifications2(),
  ));
}
