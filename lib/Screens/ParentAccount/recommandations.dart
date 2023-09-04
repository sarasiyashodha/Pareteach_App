import 'package:flutter/material.dart';
import '../../../Components/nav_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({super.key});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Recommendations"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/parentProfile.jpg"),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 180.0,
                width: 356.0,
                decoration: const BoxDecoration(
                  color: Color(0XFFDFEEEA),
                  borderRadius: BorderRadius.all(Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Align(child: Text('Mathematics', style: knormalTextStyle),
                        alignment: Alignment.topLeft,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Align(child: Text('Master the basics.', style: knormalTextStyle),
                        alignment: Alignment.topLeft,
                      ),
                      Align(child: Text('Do extra exercises.', style: knormalTextStyle),
                        alignment: Alignment.topLeft,
                      ),
                      Align(child: Text('Practice regularly', style: knormalTextStyle),
                        alignment: Alignment.topLeft,
                      ),
                      Align(child: Text('Improve critical thinking', style: knormalTextStyle),
                        alignment: Alignment.topLeft,
                      ),

                    ],

                  ),
                ),
              ),
            ],
          ),
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
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
    
    );
  }
}
