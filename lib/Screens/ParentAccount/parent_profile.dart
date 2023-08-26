import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/nav_bar.dart';

class ParentProfile extends StatefulWidget {
  const ParentProfile({super.key});

  @override
  State<ParentProfile> createState() => _ParentProfileState();
}

class _ParentProfileState extends State<ParentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0XFF305D62),
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
        ),
      ),
    );
  }
}
