import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';

class Progress2 extends StatefulWidget {
  const Progress2({Key? key}) : super(key: key);

  @override
  _ProgressState2 createState() => _ProgressState2();
}

class _ProgressState2 extends State<Progress2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Progress"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpg"),
            ),
          ),
        ],
      ),

    );
  }
}

class ProgressBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

void main() {
  runApp(MaterialApp(
    home: Progress2(),
  ));
}
