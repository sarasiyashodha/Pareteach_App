import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';
import 'package:mini_project_mobile_app/Components/recommandations_tile.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Recommendations"),
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
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             SizedBox(
               height: 40.0,
             ),
             RecommendationsTile(),
             SizedBox(
               height: 20.0,
             ),
             RecommendationsTile(),
             SizedBox(
               height: 20.0,
             ),
             RecommendationsTile(),
             SizedBox(
               height: 20.0,
             ),
             RecommendationsTile(),
             SizedBox(
               height: 20.0,
             ),
             RecommendationsTile(),
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
